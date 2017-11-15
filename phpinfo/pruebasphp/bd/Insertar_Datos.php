<html>
<head>
  <title>ASIR</title>
  <meta charset="UTF-8">
  <meta name="description" content="Probando bordes">
  <meta name="keywords" content="HTML, CSS, bordes">
  <meta name="author" content="root" >
  <link rel="stylesheet" type="text/css" href="css/estilos.css">
  
</head>

<body>

	<h3>Nueva arma asalto</h3>


<?php
if ( !isset($_POST['Arma']) ) {
?>
        
    <form action="<?php $_SERVER['PHP_SELF'] ?>"  method="post">
        Arma: <input type="text" name="Arma" size="8" /><br/>
        Daño: <input type="text" name="DMG" size="10" /><br/>
        Cargador: <input type="text" name="Cargador" size="10" /><br/>
        <input type="submit" name="env" value="ENVIAR"/>
    </form>	  
    
<?php    
}
else {
    $username = asier19;
    $password = Calvo1997;
    $servername = localhost;
    $database = Battlefield_1;
    $table = Armas_Asalto; 
try {
    //Conexión con una base de datos del servidor
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "Conexión con la base de datos '".$database."' del servidor '".$servername."' realizada.<br/>";
    
    echo "Arma: ".$_POST['Arma']."<br/>";
    echo "Daño: ".$_POST['DMG']."<br/>";
    echo "Cargador: ".$_POST['Cargador']."<br/>";    
    
    $sql = "INSERT INTO ".$table." (Arma, DMG, Cargador) VALUES ('".$_POST['Arma']."','".$_POST['DMG']."','".$_POST['Cargador']."')";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    echo "Arma añadida correctamente.<br/>";
    }
catch(PDOException $e) {
    if ($e->getCode() == "23000")
        echo "Imposible insertar el registro porque esa clave ya existe."."<br/>";
    else
        echo $e->getMessage();
}
}    
 //print "<br/><br/><br/>sql: ".$sql;
?>



</body>
</html>
