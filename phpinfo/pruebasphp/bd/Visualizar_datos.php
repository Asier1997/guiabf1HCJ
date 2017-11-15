Armas del asalto y sus estadisticas<br></br>

<?php
$username = asier19;
$password = Calvo1997;
$servername = localhost;
$database = Battlefield_1;
$table = Armas_Asalto;
try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password,
array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8"));
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//    echo "Conexión con la base de datos $database del servidor $servername reali.<br/>";
    $sql = "SELECT * FROM ".$table." ORDER BY Arma";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result_array = $stmt->fetchAll();
    print "<table border='1px solid grey'>";
    print "<tr>";
    print "<th>";print "Arma";print "</th>";
    print "<th>";print "DMG";print "</th>";
    print "<th>";print "Cargador";print "</th>";
    print "</tr>";
    foreach ( $result_array as $linea ) {
        print "<tr>";
        print "<td>";print $linea['Arma'];print "</td>";
        print "<td>";print $linea['DMG'];print "</td>";
        print "<td>";print $linea['Cargador'];print "</td>";
        print "</tr>";
    }
    print "</table>";
}
catch(PDOException $e){
    echo $e->getMessage();
}
?>
