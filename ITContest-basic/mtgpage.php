<?php
// 外部ファイルを読み込む
include("get-meeting.php");

// 以降のコードで$data変数を使用してデータを表示
?>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>会議情報</title>
    <meta name="description" content="会議データ画面 テスト段階です">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.min.css">
    <link rel="stylesheet" href="css/mtgpage.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"></script>
</head>
<body>
    
    <header>
        <h1 class="mtg-name"><?php echo $data[0]['mtgname']; ?></h1>
        <h2 class="name">主催者名 <?php echo $data[0]['name']; ?></h2>
    </header>

    <section>
        <h2>日時場所</h2>
        <ul>
            <p class="date">日付: <?php echo $data[0]['reservation']; ?></p>
            <p class="time">時間: <?php echo $data[0]['start_time']; ?>-<?php echo $data[0]['end_time']; ?></p>
            <p class="location">場所: <?php echo $data[0]['venuename']; ?></p> 
        </ul>
    </section>

    <section>
    <h2>QRコード</h2>
        <div class="image-container">
            <div class="image-item">
                <img src="./img/qrcode.png" alt="QRコード">
                <p class="image-title">主催者用QR</p>
            </div>

            <div class="image-item">
            <img src="./img/qrcode2.png" alt="QRコード">
                <p class="image-title">参加者用QR</p>
            </div>
        </div>
        <h2 class="mtgid">会議ID<p style="color: red;"><?php echo $data[0]['mtgid']; ?></h2>
    </section>

    <section>
    <h2><a href="questions.php?mtgid=<?php echo $data[0]['mtgid']; ?>">質問一覧ページへ</a></h2>
    </section>

    <footer>
      <a href="./top.html">Top</a>
    </hooter>


    <!-- <div class="title-container">
        <h1 class="mtg-name"><?php echo $data[0]['mtgname']; ?></h1>
        <h2 class="name">主催者名 <?php echo $data[0]['name']; ?></h2>
    </div> -->

    <!-- -----テーブル表示する場合下記tableタグを有効に----- -->
    <!-- <table>
        <thead>
            <tr>
                <th>主催者名</th>
                <th>会議名</th>
                <th>会場名</th>
                <th>予約日</th>
                <th>開始時間</th>
                <th>終了時間</th>
                <th>開催形式</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data as $row): ?>
                <tr>
                    <td><?php echo $row['name']; ?></td>
                    <td><?php echo $row['mtgname']; ?></td>
                    <td><?php echo $row['venuename']; ?></td>
                    <td><?php echo $row['reservation']; ?></td>
                    <td><?php echo $row['start_time']; ?></td>
                    <td><?php echo $row['end_time']; ?></td>
                    <td><?php echo $row['lesson']; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table> -->
</body>
</html>
