<?php
// スーパークラスであるDbDataを利用するため	
require_once __DIR__ . '/dbdata.php';

// Productクラスの宣言		
class Product extends Dbdata
{
    // 選択されたジャンルの酒造店を取り出す		
    public function getItems($genre)
    {
        $sql = "select * from hyogo where genre = ?";
        $stmt = $this->query($sql, [$genre]); // DbDataクラスに定義したquery( )メソッドを実行している		
        $hyogo = $stmt->fetchAll();
        return $hyogo; // 抽出した商品データの結果セットを返す
    }

    // 選択された商品を取り出す	
    public function getItem($ident)
    {
        $sql = "select * from hyogo where ident = ?";
        $stmt = $this->query($sql, [$ident]);
        $hyogo = $stmt->fetch(); // 1件だけ抽出するのでfetch( )メソッドを使用
        return $hyogo; // 抽出した商品データを返す（1件だけ）	
    }
}
