<?php
require_once __DIR__ . '/image_tool.php';
// genreの値を受け取る										
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['genre'])) {
    // POSTで送られてきた場合	
    $genre = $_POST['genre'];
} else if ($_SERVER["REQUEST_METHOD"] === "GET" && isset($_GET['genre'])) {
    // GETで送られてきた場合	
    $genre = $_GET['genre'];
} else {
    $genre = 'default_value';
}

require_once __DIR__ . '/product.php';
$genre = 'tubo'; //ジャンルの指定
// Productオブジェクトを生成する
$product = new Product();

// 選択されたジャンルのデータを抽出
$hyogo = $product->getItems($genre);
// header.phpを読み込む
require_once __DIR__ . '/header.php';
?>

<h1 style="text-align:center">壼坂酒造</h1>
<table>
    <tr>
        <th>&nbsp;</th>
        <th>商品名</th>
        <th>原料米</th>
        <th>精米歩合</th>
        <th>詳細</th>
    </tr>
    <?php
    foreach ($hyogo as $kobe) {
    ?>
        <tr>
            <td class="td_mini_img"><img src="<?php echo img_judge("../images/" . $kobe['image']); ?>" <?php echo img_size("../images/" . $kobe['image']); ?> border='0'><br></td>
            <td class="td_sake_name"><?= $kobe['name'] ?></td>
            <td class="td_rice_name"><?= $kobe['rice'] ?></td>
            <td class="td_rice_percent"><?= number_format($kobe['rice_percent']) ?></td>
            <td><a href="product_detail.php?ident=<?= $kobe['ident'] ?>"><span class="button_image">詳細</span></a></td>
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