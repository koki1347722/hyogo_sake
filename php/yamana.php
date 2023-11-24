<?php
require_once __DIR__ . '/image_tool.php';
require_once __DIR__ . '/product.php';
$genre = 'yamana'; //ジャンルの指定
// Productオブジェクトを生成する
$product = new Product();

// 選択されたジャンルのデータを抽出
$hyogo = $product->getItems($genre);
// header.phpを読み込む
require_once __DIR__ . '/header.php';
?>

<h1 style="text-align:center">山名酒造</h1>
<?php
if ($hyogo && $hyogo[0]['ident'] == 4) :
?>
    <!-- identが4の場合 -->
    <div style="text-align: center;">
        <img src="<?php echo img_judge("../images/" . $hyogo[0]['image']); ?>" <?php echo img_size("../images/" . $hyogo[0]['image']); ?> border='0'><br>
    </div>

<?
else :
?>
    <!-- identが4ではない場合 -->
    <table border="9">
        <tr>
            <th>&nbsp;</th>
            <th>商品名</th>
            <th>原料米</th>
            <th>麹米</th>
            <th>原材料</th>
            <th>精米歩合</th>
            <th>麹米・精米歩合</th>
            <th>アルコール度数</th>
            <!--<th>詳細</th>-->
        </tr>
        <?php
        foreach ($hyogo as $kobe) :
        ?>
            <?php
            if ($kobe['ident'] != 4) :
            ?>
                <tr>
                    <td class="td_mini_img"><span><img src="<?php echo img_judge("../images/" . $kobe['image']); ?>" <?php echo img_size("../images/" . $kobe['image']); ?> border='0'><br></span></td>
                    <td class="td_sake_name"><span><?= $kobe['name'] ?></span></td>
                    <td class="td_rice_name"><span><?= $kobe['rice'] ?></span></td>
                    <td class="td_malt_name"><span><?= $kobe['malt'] ?></span></td>
                    <td class="td_materials_name"><span><?= $kobe['materials'] ?></span></td>
                    <td class="td_rice_percent"><span><?= number_format($kobe['rice_percent']) ?></span></td>
                    <td class="td_malt_percent"><span><?= number_format($kobe['malt_percent']) ?></span></td>
                    <td class="td_ALC"><span><?= number_format($kobe['ALC']) ?></span></td>
                    <!--<td><a href="product_detail.php?ident=<?= $kobe['ident'] ?>"><span class="button_image">詳細</span></a></td>-->
                </tr>
            <?php
            endif;
            ?>
        <?php
        endforeach;
        ?>
    </table>
    <br>
    <a href="../php/index.php">酒造一覧に戻る</a>
<?php
endif;
?>

<?php
require_once __DIR__ . '/footer.php';
?>