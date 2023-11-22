<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>dbselect.php</title>
</head>

<body>
    <h4>酒</h4>
    <hr>
    <?php
    $dsn = 'mysql:host=localhost;dbname=sake;charset=utf8';
    $user = 'koki';
    $password = 'syake';

    try {
        $pdo = new PDO($dsn, $user, $password);
        $sql = 'select  *  from  hyogo';
        $stmt = $pdo->query($sql);
        $results = $stmt->fetchAll();
        foreach ($results  as  $result) {
            echo 'ident=' . $result['ident'] . ', name=' . $result['name'] . ', genre=' . $result['genre'] . '<br>';
        }
    } catch (Exception $e) {
        echo 'Error:' . $e->getMessage();
        die();
    }
    $pdo = null;
    ?>
</body>

</html>