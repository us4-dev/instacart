<?php 
/*
require "vendor/autoload.php";
$pw = new \PhpOffice\PhpWord\PhpWord();
$section = $pw->addSection();
\PhpOffice\PhpWord\Shared\Html::addHtml($section, "<span>FOO</span>", false, false);
$pw->save("HTML.docx", "Word2007");

*/
?>


<?php
// (A) LOAD PHPWORD
require "vendor/autoload.php";
$pw = new \PhpOffice\PhpWord\PhpWord();

// (B) ADD HTML CONTENT
$section = $pw->addSection();
$html = "<h1>First Test File</h1>";
$html .= "<p>This is a paragraph of random text</p>";
$html .= "<table><tr><td>A table</td><td>Cell</td></tr></table>";
\PhpOffice\PhpWord\Shared\Html::addHtml($section, $html, false, false);

// (C) SAVE TO DOCX ON SERVER
// $pw->save("convert.docx", "Word2007");

// (D) OR FORCE DOWNLOAD
header("Content-Type: application/octet-stream");
header("Content-Disposition: attachment;filename=\"convert.docx\"");
$objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($pw, "Word2007");
$objWriter->save("php://output");
