<?php
// データベース接続情報
$dbHost = "127.0.0.1";
$dbUser = "root";
$dbPassword = "";
$dbName = "itcontest";

// データベースに接続
$connection = mysqli_connect($dbHost, $dbUser, $dbPassword, $dbName);

// 接続エラーのチェック
if (mysqli_connect_errno()) {
    die("データベースへの接続に失敗しました: " . mysqli_connect_error());
}

// データを取得するSQLクエリを作成
$query = "SELECT * FROM meetings"; // すべてを取得する場合使用
// $query = "SELECT * FROM meetings ORDER BY reservation DESC LIMIT 1";//最新一つだけ

// SQLクエリを実行してデータを取得
$result = mysqli_query($connection, $query);

// データを配列に格納
$data = array();
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}

// データベース接続を閉じる
mysqli_close($connection);
?>
