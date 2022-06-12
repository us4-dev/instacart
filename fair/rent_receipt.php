<?php 
include('../header.php');
if(!isset($_SESSION['objLogin'])){
	header("Location: " . WEB_URL . "logout.php");
	die();
}
?>
<?php
include(ROOT_PATH.'language/'.$lang_code_global.'/lang_fare_list.php');
$delinfo = 'none';
$addinfo = 'none';
$msg = "";
if(isset($_GET['id']) && $_GET['id'] != '' && $_GET['id'] > 0){
	$sqlx= "DELETE FROM `tbl_add_fair` WHERE f_id = ".$_GET['id'];
	mysqli_query($link,$sqlx); 
	$delinfo = 'block';
}
if(isset($_GET['m']) && $_GET['m'] == 'add'){
	$addinfo = 'block';
	$msg = $_data['added_rent_successfully'];
}
if(isset($_GET['m']) && $_GET['m'] == 'up'){
	$addinfo = 'block';
	$msg = $_data['update_rent_successfully'] ;
}

$total_rent = 0;
$total_paid = 0;
$total_due = 0;
$total_paid_arr = array();

if(isset($_POST['filter'])){
    $result = mysqli_query($link,"Select *,ar.image as r_image,ar.r_name,fl.floor_no as fl_floor,u.unit_no as u_unit,m.month_name from tbl_add_fair f inner join tbl_add_floor fl on fl.fid = f.floor_no inner join tbl_add_unit u on u.uid = f.unit_no inner join tbl_add_month_setup m on m.m_id = f.month_id inner join tbl_add_rent ar on ar.rid = f.rid where f.type = 'Rented' and f.branch_id = " . (int)$_SESSION['objLogin']['branch_id'] . " and f.f_id = '".$_POST['invoice_id']."' order by f.f_id desc");
	if($row = mysqli_fetch_array($result)){
    	$total_rent = $row['total_rent'];
	    $result_sum = mysqli_query($link,"Select * from tbl_invoice_payment where invoice_id = ".$_POST['invoice_id']);
	    while($row_sum = mysqli_fetch_array($result_sum)){
	        $total_paid_arr [] = $row_sum;
	        $total_paid += $row_sum['amount'];
	    }
	} else {
	    $msg = "No Invoice Found";
	}
	
	$total_due = (float)$total_rent - (float)$total_paid;
}


?>




<!-- Content Header (Page header) -->

<section class="content-header">
  <h1>Generate Rent Receipt</h1>
</section>
<br/><br/>
<!-- Main content -->
<section class="content">
<!-- Full Width boxes (Stat box) -->
<div class="row">
  <div class="col-xs-12">
        
        <form method="post">
            <div class="col-sm-6 col-sm-offset-3">
              <?php if($msg != '') { ?><div class="alert alert-danger"><?php echo $msg; ?></div><?php } ?>
              <div class="panel panel-default" style="padding:20px;">
                <div class="form-group">
                    <label>Enter Your Invoice No :</label>
                    <input type="text" class="form-control" name="invoice_id" value="<?php echo isset($_POST['invoice_id']) ? $_POST['invoice_id'] : ''; ?>" required>
                </div>
                <div class="form-group" align="center">
                    <input type="submit" class="btn btn-success" name="btnSubmit" value="Submit">
                </div>
              </div>
            </div>
            
            <?php if(!empty($total_rent)) { ?>
                <div class="col-sm-6 col-sm-offset-3">
                  <div class="panel panel-default row" style="padding:20px;">
                    <div class="form-group col-sm-4">
                        <div style="font-size:20px;">
                            Total : <?php echo $ams_helper->currency($localization, $total_rent); ?>
                        </div>
                    </div>
                    <div class="form-group col-sm-4">
                        <div style="font-size:20px;">
                            Paid : <?php echo $ams_helper->currency($localization, $total_paid); ?>
                        </div>
                    </div>
                    <div class="form-group col-sm-4">
                        <div style="font-size:20px;">
                            Due : <?php echo $ams_helper->currency($localization, $total_due); ?>
                        </div>
                    </div>
                  </div>
                </div>
                
                <div class="col-sm-6 col-sm-offset-3">
                    <div class="panel panel-default row" style="padding:20px;">
                    <table class="table table-bordered table-striped dt-responsive">
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($total_paid_arr as $tp) { ?>
                            <tr>
                                <td><?php echo $tp['paid_date']?></td>
                                <td><?php echo $tp['amount']?></td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                  </div>
                </div>
                
                
            <?php } ?>
            <input type="hidden" name="filter" value="0">
        </form>
  </div>
  <!-- /.col -->
</div>
<!-- /.row -->
<script type="text/javascript">
function deleteFair(Id){
  	var iAnswer = confirm("<?php echo $_data['confirm']; ?>");
	if(iAnswer){
		window.location = '<?php echo WEB_URL; ?>fair/fairlist.php?id=' + Id;
	}
  }
  
  $( document ).ready(function() {
	setTimeout(function() {
		  $("#me").hide(300);
		  $("#you").hide(300);
	}, 3000);
});
</script>

<?php include('../footer.php'); ?>
