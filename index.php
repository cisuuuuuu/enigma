<?php


if( isset($_POST) && !empty($_POST)) {
	if(isset($_POST['action']) AND $_POST['action']=='send') {

			$title='enigmasc.pl - Nowa wiadomość!';
			$content='<p>Imię: '.$_POST['imie'].'</p>
					<p>Telefon: '.$_POST['telefon'].'</p>
					<p>email:  '.$_POST['email'].'</p>		
					<p>wiadomość: '.$_POST['tresc'].'</p>';
		
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$headers .= 'To: enigmasc.pl <wieslawagargala@enigmasc.plv>' . "\r\n";
		$headers .= 'From: enigmasc.pl <wieslawagargala@enigmasc.pl>' . "\r\n";
		
		$wiadomosc = '<html><head><title>'.$title.'</title></head></body>
		'.$content.'

		<p>-------------------------------------------------------</p>
		<p>Wiadomość została przesłana ze strony internetowej</p></body></html>';


		$wiadomosc = iconv('UTF-8', 'ISO-8859-2', $wiadomosc);
			if(mail('wieslawagargala@enigmasc.pl', $title, $wiadomosc, $headers)){
				echo 'true';
			}else{
				echo "false";
			}
	}	
exit;
}

require_once dirname(__FILE__).'/classes/class.db.php';
$db=new DB;

try
{	
	if(isset($_GET['id_cms'])){
		$stmt = $db->prepare('SELECT * FROM #__cms WHERE id_cms=:id');  
		$stmt -> bindValue(':id', $_GET['id_cms'], PDO::PARAM_INT);
		//echo 'jest';
	}else{
		$stmt = $db->prepare('SELECT * FROM #__cms');  
		//echo 'niema';
	}
	$stmt -> execute(); 
	$cms=$stmt->fetchAll();	
	$stmt->closeCursor();
}
catch(PDOException $e)
{
	echo 'Wystapil blad biblioteki PDO: ' . $e->getMessage();
}

?>

<!DOCTYPE html>
<head>
	<!--[if IE]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<title><?php echo $cms[0]['title_tag']; ?></title>
	<meta charset="UTF-8" />
	<meta name="description" content="<?php echo $cms[0]['description_tag']; ?>" />
	<meta name="keywords" content="<?php echo $cms[0]['keywords_tag']; ?>" />
	<link rel="stylesheet" href="css/template.css?<?php echo filemtime('css/template.css'); ?>" />
	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery.validate.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
</head>
<body>
<div id="facebook_slider_widget" style="display: none"><script type="text/javascript" src="http://webfrik.pl/widget/facebook_slider.html?fb_url=https://www.facebook.com/pages/Enigma-us%C5%82ugi-ksi%C4%99gowe-sp%C3%B3%C5%82ka-cywilna-BCisek-WGarga%C5%82a/378794122304940?fref=nf&amp;fb_width=290&amp;fb_height=590&amp;fb_faces=true&amp;fb_stream=true&amp;fb_header=true&amp;fb_border=true&amp;fb_theme=light&amp;chx=787&amp;speed=FAST&amp;fb_pic=sign&amp;position=LEFT"></script></div>
<div class="layer bg1">
	<div class="center head">
		<a href="http://www.enigmasc.pl"><img src="img/logo.png" alt="logo" /></a>
		<h1>Enigma - usługi księgowe</h1>
		<img src="img/baner.png" alt="Enigma baner" class="baner" />
		<ul class="menu">
			<li><a href="http://www.enigmasc.pl/"<?php if(isset($cms[0]['id_cms']) AND $cms[0]['id_cms']==1) echo ' class="hover"'; ?>>Strona główna</a></li>
			<li><a href="o-firmie"<?php if(isset($cms[0]['id_cms']) AND $cms[0]['id_cms']==2) echo ' class="hover"'; ?>>O firmie</a></li>
			<li><a href="oferta"<?php if(isset($cms[0]['id_cms']) AND $cms[0]['id_cms']==3) echo ' class="hover"'; ?>>Oferta</a></li>
			<li><a href="kontakt"<?php if(isset($cms[0]['id_cms']) AND $cms[0]['id_cms']==4) echo ' class="hover"'; ?>>Kontakt</a></li>
		</ul>
	</div>
</div>
<div class="layer">
	<div class="center">
		<div class="wrapper">
			<div class="content">
			 <?php 
			 if(strtolower($cms[0]['title'])=='kontakt'){
			 ?>
			 <div class="box contact c_form">
				<div class="c-form">
				<h3>Formularz kontaktowy</h3><br />
					<form accept-charset="UTF-8" action="index.php" method="POST" class="s_mail">
					<div class="input-group">
						<input type="text" value="" name="imie" id="imie" placeholder="imię" class="form-control required">
				
						<input type="text" value="" name="email" id="email" placeholder="email" class="form-control required">
					
						<input type="text" value="" name="telefon" id="telefon" placeholder="telefon" class="form-control">
					</div>
					<div class="textarea-group">

						<textarea name="tresc" rows="4" cols="66" id="tresc" class="required"></textarea>
					</div>
						<button class="btn btn-send" type="submit">wyślij wiadomość</button>
				
					</form>
					
				</div>
			</div>
			<div class="info">
			<?php
			 }
			 
			 echo stripslashes($cms[0]['content']); 
			 
			 
			 if(strtolower($cms[0]['title'])=='kontakt'){
			 ?>
			</div>
			

			<div class="mapa">
			<h3>Mapa dojazdu</h3><br />
			
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2562.814593012375!2d22.00352659999999!3d50.03356989999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473cfaffd0d9e39f%3A0xa822602e5c698433!2sEnigmasc!5e0!3m2!1spl!2spl!4v1430983896502" width="880" height="350" frameborder="0" style="border:0"></iframe>
			</div>
			<?php
			}
			?>
			</div>
			<div class="footer">
				<ul class="menu-footer">
					<li><a href="">Strona główna</a></li>
					<li><a href="o-firmie">O firmie</a></li>
					<li><a href="oferta">Oferta</a></li>
					<li><a href="kontakt">Kontakt</a></li>
				</ul>
				<p>&copy; 2015 „ENIGMA” Usługi księgowe spółka cywilna</p>
			</div>
		</div>
	</div>
</div>
</body>
</html>