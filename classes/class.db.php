<?php
//error_reporting(E_ALL);
//http://pl.wikibooks.org/wiki/PHP/Biblioteka_PDO



class DB {
public $pdo;
protected $tablePrefix;


	function __construct() {  
		require dirname(dirname(__FILE__))."/configs/config.php";	
		//$this->prefix=$db['table_prefix'];
		$this->tablePrefix=$db['table_prefix'];
		try
		{
		  $this->pdo = new PDO($db['dbtype'].':host='.$db['host'].';dbname='.$db['dbname'].';port='.$db['port'].';encoding='.$db['encoding'], $db['user'], $db['password']);
		  $this->pdo -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);	
		  $this->pdo->query('SET NAMES '.$db['encoding']);
		  $this->pdo->query('SET CHARACTER SET '.$db['encoding']);		  
		}
		catch(PDOException $e)
		{
			echo 'Polaczenie nie moglo zostac utworzone: ' . $e->getMessage();
		}
	}
	
	function __destruct(){
		
	}
	
	public function __call($name, $attr){                 
	  echo 'BLAD: Nieznana funkcja '.$name.'<br/>';
    }  
	
	public function query($query){
		return $this->pdo->query($this->replacePrefix($query));
	}
	
	public function prepare($query){
		return $this->pdo->prepare($this->replacePrefix($query));
	}
	
	
	public function replacePrefix($sql, $prefix='#__'){
        $escaped = false;
        $startPos = 0;
        $quoteChar = '';
        $literal = '';

        $sql = trim($sql);
        $n = strlen($sql);

        while ($startPos < $n)
        {
            $ip = strpos($sql, $prefix, $startPos);
            if ($ip === false) {
                break;
            }

            $j = strpos($sql, "'", $startPos);
            $k = strpos($sql, '"', $startPos);
            if (($k !== false) && (($k < $j) || ($j === false))) {
                $quoteChar  = '"';
                $j          = $k;
            } else {
                $quoteChar  = "'";
            }

            if ($j === false) {
                $j = $n;
            }

            $literal .= str_replace($prefix, $this->tablePrefix,substr($sql, $startPos, $j - $startPos));
            $startPos = $j;

            $j = $startPos + 1;

            if ($j >= $n) {
                break;
            }
            while (true)
            {
                $k = strpos($sql, $quoteChar, $j);
                $escaped = false;
                if ($k === false) {
                    break;
                }
                $l = $k - 1;
                while ($l >= 0 && $sql{$l} == '\\')
                {
                    $l--;
                    $escaped = !$escaped;
                }
                if ($escaped) {
                    $j  = $k+1;
                    continue;
                }
                break;
            }
            if ($k === false) {
                // error in the query - no end quote; ignore it
                break;
            }
            $literal .= substr($sql, $startPos, $k - $startPos + 1);
            $startPos = $k+1;
        }
        if ($startPos < $n) {
            $literal .= substr($sql, $startPos, $n - $startPos);
        }

        return $literal;
    }
  

	 

}
