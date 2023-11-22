<?php
// genreの値を受け取る										
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // POSTで送られてきた場合	
    $genre = $_POST['genre'];
} else {
    // GETで送られてきた場合	
    $genre = $_GET['genre'];
}

require_once __DIR__ . '/product.php';
// Productオブジェクトを生成する
$product = new Product();

// 選択されたジャンルのデータを抽出
$hyogo = $product->getItems($genre);
// header.phpを読み込む
require_once __DIR__ . '/header.php';
?>

<h1 style="text-align:center">山陽盃酒造</h1>
<table>
    <tr>
        <th>&nbsp;</th>
        <th>商品名</th>
        <th>原料米</th>
        <th>精米歩合</th>
        <th>詳細</th>
    </tr>
    <?php
    foreach ($hyogo as $hyogo) {
    ?>
        <tr>
            <td class="td_mini_img"><img class="mini_img" src="../images/<?= $hyogo['image'] ?>"></td>
            <td class="td_sake_name"><?= $hyogo['name'] ?></td>
            <td class="td_rice_name"><?= $hyogo['rice'] ?></td>
            <td class="td_rice_percent"><?= number_format($hyogo['rice_percent']) ?></td>
            <td><a href="product_detail.php?ident=<?= $hyogo['ident'] ?>"><span class="button_image">詳細</span></a></td>
        </tr>
    <?php
    }
    ?>
</table>
<br>
<a href="../php/index.php">酒造一覧に戻る</a>

<?php
require_once __DIR__ . '/footer.php';
?>