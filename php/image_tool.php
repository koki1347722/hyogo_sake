<?php
//画像が出力できるか判定　画像ない場合は「No Image」出力
function img_judge($image)
{

    $extension_list = array(".jpg", ".png"); //画像拡張子

    foreach ($extension_list as $extension) {
        //当確の拡張子があればそのままブラウザに出力
        if (strpos($image, $extension) !== false) {
            return $image;
        }
    }

    return 'img/noimage.png';
}

//画像のサイズを変更
function img_size($image)
{
    //「No image」の場合
    if ($image == 'img/noimage.png') {
        return "width='640' height='200'";
    }

    //画像のサイズ情報を取得
    $image = getimagesize($image);
    if ($image) {
        //heightのサイズを360pxに固定し、それに合わせた比率のwidthのサイズを設定(height：width=360:X)
        $width = floor(200 * $image[0] / $image[1]);
        //widthのサイズが640pxを超えていたら640pxに固定
        if ($width > 640) {
            $width = 640;
        }
    } else {
        return "width='640' height='200'";
    }

    return "width='" . $width . "' height='200'";
}
