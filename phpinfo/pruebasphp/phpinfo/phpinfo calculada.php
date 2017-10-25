<html>
<head>
<title>Plantilla html</title>
</head>
<body>
 <?php
 if ($_SERVER['HTTP_HOST'] = $_SERVER['REMOTE_ADDR'])
	echo "Estas accediendo desde la maquina servidor"
 else if ($_SERVER['HTTP_HOST'] < $_SERVER['REMOTE_ADDR'])
	echo tienes una ip menor que el la del servidor al que estas accediendo"
 else if ($_SERVER['HTTP_HOST'] > $_SERVER['REMOTE_ADDR'])
	echo tienes una ip mayor que el la del servidor al que estas accediendo"
</body>
</html>
