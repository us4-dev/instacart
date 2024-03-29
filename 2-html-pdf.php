<?php
// (A) LOAD MPDF
require "vendor/autoload.php";
$mpdf = new \Mpdf\Mpdf();
// PORTRAIT BY DEFAULT, WE CAN ALSO SET LANDSCAPE
// $mpdf = new \Mpdf\Mpdf(["orientation" => "L"]);

// (B) OPTIONAL META DATA + PASSWORD PROTECTION
$mpdf->SetTitle("Document Title");
$mpdf->SetAuthor("Jon Doe");
$mpdf->SetCreator("Code Boxx");
$mpdf->SetSubject("Demo");
$mpdf->SetKeywords("Demo", "Testing");
$mpdf->SetProtection([], "user", "password");

// (C) THE HTML
$html = "<html>
<head>
  <style>
    #test{ background:#ff0000; }
    #atable{ border:1px solid #00ff00; }
  </style>
</head>
<body>
  <h1>Title</h1>
  <p id='test'>Hello world!</p>
  <table id='atable'>
    <tr><td>A Table</td></tr>
	<tr><td>A Table</td></tr>
	<tr><td>A Table</td></tr>
	<tr><td>A Table</td></tr>
	<tr><td>A Table</td></tr>
	
  </table>
</body>
</html>";
// OR WE CAN JUST READ FROM A FILE
// $html = file_get_contents("PAGE.HTML");

// (D) WRITE HTML TO PDF
$mpdf->WriteHTML($html);

// (E) OUTPUT
// (E1) DIRECTLY SHOW IN BROWSER
$mpdf->Output();

// (E2) FORCE DOWNLOAD
// $mpdf->Output("demo.pdf", "D");

// (E3) SAVE TO FILE ON SERVER
// $mpdf->Output("demo.pdf");
