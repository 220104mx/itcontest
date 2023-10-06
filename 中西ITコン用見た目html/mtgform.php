<?php
// エラーレポーティングを有効にし、すべてのエラーを表示する設定
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // フォームデータを受け取る
    $name = $_POST['your-name'];
    $mtgname = $_POST['mtg-name'];
    $venuename = $_POST['venue-name'];
    $reservation = $_POST['your-reservation'];
    $start_time = $_POST['start-time'];
    $end_time = $_POST['end-time'];
    $lesson = $_POST['your-lesson'];

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

    // データベースにフォームデータを挿入
    $query = "INSERT INTO meetings (name,mtgname,venuename,reservation,start_time,end_time,lesson) VALUES ('$name', '$mtgname', '$venuename', '$reservation', '$start_time', '$end_time', '$lesson')";

    if (mysqli_query($connection, $query)) {
        // データが正常に保存された場合、リダイレクト処理をmtgredirect.jsに委譲
        header("Location:./js/mtgredirect.js");
        exit;
    } else {
        echo "データの保存中にエラーが発生しました: " . mysqli_error($connection);
    }
    
    // なぜか下記コードがうまく動かないので上記でjsに処理を飛ばす
    // if (mysqli_query($connection, $query)) {
    //     // データが正常に保存された場合のリダイレクト
    //     $redirectURL = "top.html"; // リダイレクト先のページのURL
    //     header("Location: " . $redirectURL);
    //     exit;
    // } else {
    //     echo "データの保存中にエラーが発生しました: " . mysqli_error($connection);
    // }

    // データベース接続を閉じる
    mysqli_close($connection);
}
?>
