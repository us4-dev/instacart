<?php if(isset($_GET['id']) && !empty($_GET['id'])){

session_start();

include("../config.php");

$name = '';
$address = '';



$resultx = mysqli_query($link, "SELECT * from tblbranch where branch_id = " . (int)$_SESSION['objLogin']['branch_id']);
if($rowx = mysqli_fetch_array($resultx)){

	
	$name = $rowx['branch_name'];
	$address = $rowx['b_address'];
}
	

$r_name = '';
$r_email = '';
$r_contact = '';
$r_address = '';
$r_nid = '';
$r_floor_no = '';
$r_unit_no = '';
$r_advance = '';
$r_rent_pm = '';
$r_date = '';
$r_month = '';
$extra_contact_no = '';
$r_year = '';
$r_status = '';
$ttype = '';
		
$result = mysqli_query($link,"SELECT *,f.floor_no as ffloor,u.unit_no FROM tbl_add_rent r inner join tbl_add_floor f on f.fid = r.r_floor_no inner join tbl_add_unit u on u.uid = r.r_unit_no where r.rid = '" . $_GET['id'] . "'");
	if($row = mysqli_fetch_array($result)){
		
		$r_name = $row['r_name'];
		$r_email = $row['r_email'];
		$r_contact = $row['r_contact'];
		$r_address = $row['r_address'];
		$r_nid = $row['r_nid'];
		$r_floor_no = $row['ffloor'];
		$r_unit_no = $row['unit_no'];
		$r_advance = $row['r_advance'];
		$r_rent_pm = $row['r_rent_pm'];
		$r_date = $row['r_date'];
		$r_month = $row['r_month'];
		$extra_contact_no = $row['extra_contact_no'];
		$r_year = $row['r_year'];
		$r_status = $row['r_status'];
		$ttype = $row['ttype'];
}


?>
    
<!DOCTYPE html>
<html>
<head>
<title>Tenant Residential  Agreement Paper</title>
</head>
<body style="background:#FEFDFE;">

    <div style="width:50%;margin:0 auto;padding-bottom:50px;position:relative">
        <div align="center" style="position:absolute;top:0;right:0;margin:10px;"><a class="btn btn-success btn_save" title="Print" onClick="javascript:window.print();" href="javascript:void(0);">Copy </a></div>
        <div id="bottom_section">
            <div align="center"><img src="<?php echo WEB_URL; ?>/img/mainlogo.png" style="width: 250px;"></div>
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                <thead>
                    <tr>
                        <td style="font-size:12px;width:33%" align="center"><b>Floor No : <?php echo $r_floor_no; ?></b></td>
                        <td style="font-size:12px;width:33%" align="center"><b>Unit No : <?php echo $r_unit_no; ?></b></td>
                        <td style="font-size:12px;width:33%" align="center"><b>Rented Property</b></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="border: dashed 2px #000000;height: 20px;"></td>
                        <td style="border: dashed 2px #000000;height: 20px;"></td>
                        <td style="border: dashed 2px #000000;height: 20px;"></td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                <thead>
                    <tr>
                        <td style="font-size:12px;width:33%" align="center"><b>Area</b></td>
                        <td style="font-size:12px;width:33%" align="center"><b>Road</b></td>
                        <td style="font-size:12px;width:33%" align="center"><b>Building : <?php echo $name; ?></b></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="border: dashed 2px #000000;height: 20px;"></td>
                        <td style="border: dashed 2px #000000;height: 20px;"></td>
                        <td style="border: dashed 2px #000000;height: 20px;"></td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                
                <tbody>
                    <tr>
                        <td style="border: dashed 2px #000000;height: 20px; width: 50%;" align="center">Electricity Meter No</td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 50%;"></td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                <thead>
                    <tr>
                        <td style="font-size:12px;width:33%" align="center"><b>From</b></td>
                        <td style="font-size:12px;width:33%" align="center"><b>To</b></td>
                        <td style="font-size:12px;width:33%" align="center"><b>Lease Period</b></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="border: dashed 2px #000000;height: 20px;"></td>
                        <td style="border: dashed 2px #000000;height: 20px;"></td>
                        <td style="border: dashed 2px #000000;height: 20px;" align="center">One Year Only</td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                <tbody>
                    <tr>
                        <td style="border: dashed 2px #000000;height: 20px; width: 50%;" align="center">Advance Rent Per Month BD:</td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 50%;"></td>
                    </tr>
                    <tr>
                        <td style="height: 20px; width: 20%;" align="center">Amount In Words: </td>
                        <td style="border-bottom: dashed 2px #000000;height: 20px; width: 80%;"></td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                <tbody>
                    <tr>
                        <td style="height: 20px; width: 20%;" align="center">Tenant : </td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 80%;"> &nbsp;&nbsp;<?php echo $r_name; ?></td>
                    </tr>
                    <tr>
                        <td style="height: 20px; width: 20%;" align="center"></td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 80%;"></td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                <tbody>
                    <tr>
                        <td style="height: 20px; width: 20%;" align="center">Mob No.: </td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 30%;"> &nbsp;&nbsp;<?php echo $extra_contact_no; ?></td>
                        <td style="height: 20px; width: 20%;" align="center">CPR No.:</td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 30%;"></td>
                    </tr>
                    <tr>
                        <td style="height: 20px; width: 20%;" align="center">Tel No.: </td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 30%;"> &nbsp;&nbsp;<?php echo $r_contact; ?></td>
                        <td style="height: 20px; width: 20%;" align="center">CR No.:</td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 30%;"></td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                <tbody>
                    <tr>
                        <td style="height: 20px; width: 20%;" align="center">Owner </td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 80%;"></td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                <tbody>
                    <tr>
                        <td style="height: 20px; width: 20%;" align="center">Tel No. : </td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 30%;"></td>
                        <td style="height: 20px; width: 20%;" align="center">CPR No.:</td>
                        <td style="border: dashed 2px #000000;height: 20px; width: 30%;"> &nbsp;&nbsp;<?php echo $r_nid; ?></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br>
        
        <div id="bottom_section">
            <table width="100%" style="font-family: sans-serif;font-size:12px;border: dashed 2px #000000;">
                <thead>
                    <tr>
                        <td style="font-size:12px;width:50%" align="center"><b>AGREEMENT CONDITIONS</b></td>
                        <td style="font-size:12px;width:50%" ><b>شـروط الإيجـار</b></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1. The property is leased to the Tenant for the purpose of a Commercial (Only) and the Tenant has seen & accepted its condition and the Tenant shall never use it for any other purposes.</td>
                        <td>شـروط الإيجـارتم تأجير العقار إلى المستأجر بغرض استعماله كمحل تجاري (فقط) ويقر المستأجر بأنه عاين العقار وقبله على حالته ولا يحق للمستأجر استعماله لأي غرض آخر بتاتاً</td>
                    </tr>
                    <tr>
                        <td>2. The Lease Agreement is for (One Year Only). In case of termination before expire date either shall give a month written notice.</td>
                        <td>مدة هذا العقد )سنة واحدة فـقـط) وفي حالة اإلخالء قبل انتهاء المدة يجب بمدة ال تقل عن شهر.تنبيه األخر كتابياً</td>
                    </tr>
                    <tr>
                        <td>
                            3. Termination Article, this agreement is terminated without any notice and
                            the Owner has the right to vacate the Tenant from the rented property
                            immediately and appeal to Urgent Court of Justice or Property Disputes
                            Court for any of the following reasons:<br>
                            ❑ If the Tenant fails to pay the rent and agreed charges on time.<br>
                            ❑ If the lease period expires.<br>
                            ❑ If the Tenant damages or uses the property for any purpose
                            other than declared in (Rule-1), or utilizes it for any unlawful
                            or illegal activities, or harmed the neighbor.<br>
                            ❑ If the Tenant sublets the rented place or a portion of it or given
                            it to others without the Owners written approval.<br>
                            ❑ If the Tenant departs without notice.
                        </td>
                        <td>
                            الشرط الفاسخ الصريح ، يعتبر العقد
منفسخا من تلقاء نفسه ودون حاجة إلي تنبيه وتعتبر يد )المستأجر( يد قاصب و يحق للمالك )المؤجر( إخالئه في الحال و اللجوء إلي القضاء المستعجل أو محكمة المنازعات العقارية بطلب الطرد وإخالء العقار لألسباب التالية: <br>
❑ إذا تخـلـف أو عجز المستأجر عن دفع اإليجار والمصاريف في الموعـد<br>❑ إذا انتهت مدة االتفاقية<
العقار في <br>
❑ إذا سبب خراباً<br>
❑ إذا سبب أذى للجيران بأي وسيلة كانت.<br>
❑ إذا أستعمل العقار في غير الغرض المتفق عليه في البند )1 )أو في
أعمال مخالفة للقانون واآلداب.<br>
❑ إذا أجر العقار أو قسماً منها بالباطن أو تـنازل عنه للغـير دون موافقة
.
المؤجر كتابياً<br>
❑ إذا غادر المستأجر من غير تنبيه المؤجر.


                        </td>
                    </tr>

                    <tr>
                        <td>
                            4. The Tenant promises to do All Kind of Rental Maintenance, and pay Electricity & Water Tel., Municipality charges to the Authorities.
                        </td>
                        <td>
                            تعـهد المستأجر بأجراء الصيانة التأجيرية بأنواعها وكذلك بـدفع مصاريف الكهرباء والماء والبلدية والهاتف إلي الجهات المختصة.

                        </td>
                    </tr>
                    <tr>
                        <td>
                            5. The Tenant has no right to remove, alter, destroy, or ask for compensation for any installation, he made in the rented place. Tenant must obtain the prior written permission of the Owner and He shell not store inflammable materials.
                        </td>
                        <td>
                            أي شيء يحدثه المستأجر في العقار ال يحق له نقله أو تعديله أو تخريبه أو يطلب التعويض عنه وعليه مراجعة وأخذ موافقة المؤجر
كتابيا قبل وضعه وعليه عدم تخزين مواد قابلة لالشتعال.
                        </td>
                    </tr>

                    <tr>
                        <td>
                            6. The Tenant must take proper care of the property and be responsible for
any damages or mischief during the rented period.

                        </td>
                        <td>
                            مسئوالً عن التلف والضرر يلتزم المستأجر بالمحافظة على العقار ويكون خالل فترة التأجير.   
                        </td>
                    </tr>

                    <tr>
                        <td>
                            7. The Tenant shall vacate the property at once and without any Objections
in case of Demolishing or Full Maintenance of the property and without
any compensation

                        </td>
                        <td>
                            مفورا وبدون أي اعتراض في حالة الهدم أو ً
 تعـهد المستأجر بإخالء العين
الصيانة الشاملة للعقار وبدون أية مطالبات.

                        </td>
                    </tr>

                    <tr>
                        <td>
                           8
. The Owner has the right to increase the rent by 10% after expire.


                        </td>
                        <td>
                           يحق للمالك ) المؤجر( زيادة اإليجار بنسبة 10 %بانتهاء مدة العقد.

                        </td>
                    </tr>
                    <tr>
                        <td>
                           9. Two copies of this Lease are made; one for each party, and the Lease
provisions are put into effect as soon as it’s signed by both parties. The
Arabic Text is valid.


                        </td>
                        <td>
                           يحرر هذا العقد من نسختين لكل طرف نسخة منه، ويعمل بأحكامه حال
 التوقيع عليه من قبل الطرفين ويؤخذ بما ورد بالنص العربي.

                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        

        <div id="bottom_section">
            
            
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                <tbody>
                    
                    <tr>
                        <td style="height: 20px; width: 20%;" align="center">Remarks </td>
                        <td style="border-bottom: dashed 2px #000000;height: 20px; width: 80%;"></td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" style="font-family: sans-serif;font-size:12px;">
                <tbody>
                    <tr>
                        <td colspan="2" style="height: 20px; width: 50%;border: dashed 2px #000000" align="center">2nd Witness </td>
                        <td colspan="2" style="height: 20px; width: 50%;border: dashed 2px #000000" align="center">1st Witness </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 20px; width: 50%;border: dashed 2px #000000" align="center">Tenant Signature </td>
                        <td colspan="2" style="height: 20px; width: 50%;border: dashed 2px #000000" align="center">Owner Signature </td>
                    </tr>
                </tbody>
            </table>
        </div>
        
    </div>

</body>
</html>
    
    
<?php } else {
    die('Wrong Access');
}


?>