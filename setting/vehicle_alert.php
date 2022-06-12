<?php 
include('../header.php');
include(ROOT_PATH.'language/'.$lang_code_global.'/lang_month_setup.php');
if(!isset($_SESSION['objLogin'])){
	header("Location: " . WEB_URL . "logout.php");
	die();
}
if(isset($_SESSION['login_type']) && ((int)$_SESSION['login_type'] != 5)){
	header("Location: ".WEB_URL."logout.php");
	die();
}

$passing_date ='';
$insurance_date ='';
$service_due_date ='';
$service_KM ='';
$vehicle_number ='';

$button_text = $_data['save_button_text'];
$form_url = WEB_URL . "setting/vehicle_alert.php";
$hval = 0;
//
if(isset($_POST['passing_date'])){
	if($_POST['hdnSpid'] == '0'){
		$sql="INSERT INTO `tbl_car_reminder`(`vehicle_number`,`passing_date`,`insurance_date`,`service_due_date`,`service_KM`,`branch_id`) VALUES ('$_POST[vehicle_number]','".$ams_helper->datepickerDateToMySqlDate($_POST['passing_date'])."','".$ams_helper->datepickerDateToMySqlDate($_POST['insurance_date'])."','".$ams_helper->datepickerDateToMySqlDate($_POST['service_due_date'])."','$_POST[service_KM]','".(int)$_SESSION['objLogin']['branch_id']."')";
		mysqli_query($link,$sql);
		mysqli_close($link);
		$url = WEB_URL . 'setting/vehicle_alert.php?m=add';
		header("Location: $url");
	} else {
		$sql_update="UPDATE `tbl_car_reminder` set passing_date = '".$ams_helper->datepickerDateToMySqlDate($_POST['passing_date'])."',insurance_date = '".$ams_helper->datepickerDateToMySqlDate($_POST['insurance_date'])."',service_due_date = '".$ams_helper->datepickerDateToMySqlDate($_POST['service_due_date'])."',service_KM = '".$_POST['service_KM']."',vehicle_number = '".$_POST['vehicle_number']."' where id= '" . (int)$_POST['hdnSpid'] . "'";	
		mysqli_query($link,$sql_update);
		mysqli_close($link);
		$url = WEB_URL . 'setting/vehicle_alert.php?m=up';
		header("Location: $url");
	}
	$success = "block";
}

if(isset($_GET['spid']) && $_GET['spid'] != ''){
	$result_location = mysqli_query($link,"SELECT * FROM tbl_car_reminder where id= '" . (int)$_GET['spid'] . "'");
	if($row = mysqli_fetch_array($result_location)){
		$passing_date =$ams_helper->mySqlToDatePicker($row['passing_date']);
        $insurance_date =$ams_helper->mySqlToDatePicker($row['insurance_date']);
        $service_due_date =$ams_helper->mySqlToDatePicker($row['service_due_date']);
        $service_KM =$row['service_KM'];
		$button_text = $_data['update_button_text'];
		$form_url = WEB_URL . "setting/vehicle_alert.php?id=".$_GET['spid'];
		$hval = $row['id'];
		$vehicle_number =$row['vehicle_number'];
	}	
}
	
?>
<!-- Content Header (Page header) -->

<section class="content-header">
  <h1>Vehicle Reminders </h1>
  <ol class="breadcrumb">
    <li><a href="<?php echo WEB_URL?>dashboard.php"><i class="fa fa-dashboard"></i> <?php echo $_data['home_breadcam'];?></a></li>
    <li class=""><?php echo $_data['setting'];?></li>
    <li class="active">Vehicle Reminders</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
<!-- Full Width boxes (Stat box) -->
<div class="row">
  <div class="col-md-12">
    <div align="right" style="margin-bottom:1%;"> </div>
    <div class="box box-success">
      <div class="box-header">
        <h3 class="box-title"><?php echo $_data['text_2'];?></h3>
      </div>
      <form onSubmit="return validateMe();" action="<?php echo $form_url; ?>" method="post" enctype="multipart/form-data">
        <div class="box-body row">
          
          <div class="col-md-12">
              <div class="form-group">
                <label for="vehicle_number"><span class="errorStar">*</span> Vehicle number :</label>
                <input type="text" name="vehicle_number" value="<?php echo $vehicle_number;?>" id="vehicle_number" class="form-control" required />
              </div>
          </div>
          <div class="col-md-6">
              <div class="form-group">
                <label for="passing_date"><span class="errorStar">*</span> Passing Date :</label>
                <input type="text" name="passing_date" value="<?php echo $passing_date;?>" id="passing_date" class="form-control datepicker" required />
              </div>
          </div>
          <div class="col-md-6">
              <div class="form-group">
                <label for="insurance_date"><span class="errorStar">*</span> Insurance Date :</label>
                <input type="text" name="insurance_date" value="<?php echo $insurance_date;?>" id="insurance_date" class="form-control datepicker" required />
              </div>
          </div>
          <div class="col-md-6">
              <div class="form-group">
                <label for="service_due_date"><span class="errorStar">*</span> Service Due Date :</label>
                <input type="text" name="service_due_date" value="<?php echo $service_due_date;?>" id="service_due_date" class="form-control datepicker" required />
              </div>
          </div>
          <div class="col-md-6">
              <div class="form-group">
                <label for="service_KM"><span class="errorStar">*</span> Service KM :</label>
                <input type="text" name="service_KM" value="<?php echo $service_KM;?>" id="service_KM" class="form-control" required />
              </div>
          </div>
          
          <div class="col-md-12">
              <div class="form-group pull-right">
                <input type="submit" name="submit" class="btn btn-success" value="<?php echo $button_text; ?>"/>
    			&nbsp;
                <input type="reset" onClick="javascript:window.location.href='<?php echo WEB_URL; ?>setting/vehicle_alert.php';" name="btnReset" id="btnReset" value="<?php echo $_data['reset'];?>" class="btn btn-warning"/>
              </div>
          </div>
        </div>
        <input type="hidden" name="hdnSpid" value="<?php echo $hval; ?>"/>
      </form>
      <h4 style="text-align:center; color:red;"><?php echo $_data['reset_text'];?></h4>
      <!-- /.box-body -->
<?php
$delinfo = 'none';
$addinfo = 'none';
$msg = "";
if(isset($_GET['delid']) && $_GET['delid'] != '' && $_GET['delid'] > 0){
	$sqlx= "DELETE FROM `tbl_car_reminder` WHERE id = ".$_GET['delid'];
	mysqli_query($link,$sqlx); 
	$delinfo = 'block';
}
if(isset($_GET['m']) && $_GET['m'] == 'add'){
	$addinfo = 'block';
	$msg = 'Added information successfully';
}
if(isset($_GET['m']) && $_GET['m'] == 'up'){
	$addinfo = 'block';
	$msg = 'Updated information successfully';
}
?>      
      <!-- Main content -->
      <section class="content">
      <!-- Full Width boxes (Stat box) -->
      <div class="row">
        <div class="col-xs-12">
          <div class="alert alert-danger alert-dismissable" style="display:<?php echo $delinfo; ?>">
            <button aria-hidden="true" data-dismiss="alert" class="close" type="button"><i class="fa fa-close"></i></button>
            <h4><i class="icon fa fa-ban"></i> Delete Alert</h4>
            Deleted information successfully! </div>
          <div class="alert alert-success alert-dismissable" style="display:<?php echo $addinfo; ?>">
            <button aria-hidden="true" data-dismiss="alert" class="close" type="button"><i class="fa fa-close"></i></button>
            <h4><i class="icon fa fa-check"></i> <?php echo $_data['success'];?> !</h4>
            <?php echo $msg; ?> </div>
          <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Vehicle Reminders List</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table sakotable table-bordered table-striped dt-responsive">
                <thead>
                  <tr>
                    <th>Vehicle Number</th>
                    <th>Passing Date</th>
                    <th>Insurance Date</th>
                    <th>Service Due Date</th>
                    <th>Service KM</th>
                    <th><?php echo $_data['action_text'];?></th>
                  </tr>
                </thead>
                <tbody>
                  <?php
				$result = mysqli_query($link,"SELECT * FROM tbl_car_reminder where branch_id = ".(int)$_SESSION['objLogin']['branch_id']." order by id ASC ");
				while($row = mysqli_fetch_array($result)){?>
                  <tr>
					<td><?php echo $row['vehicle_number']; ?></td>
					<td><?php echo $ams_helper->mySqlToDatePicker($row['passing_date']); ?></td>
					<td><?php echo $ams_helper->mySqlToDatePicker($row['insurance_date']); ?></td>
					<td><?php echo $ams_helper->mySqlToDatePicker($row['service_due_date']); ?></td>
					<td><?php echo $row['service_KM']; ?></td>
                    <td><a class="btn btn-warning ams_btn_special" data-toggle="tooltip" href="<?php echo WEB_URL;?>setting/vehicle_alert.php?spid=<?php echo $row['id']; ?>" data-original-title="<?php echo $_data['edit_text'];?>"><i class="fa fa-pencil"></i></a> <a class="btn btn-danger ams_btn_special" data-toggle="tooltip" onclick="deleteMonth(<?php echo $row['id']; ?>);" href="javascript:;" data-original-title="<?php echo $_data['delete_text'];?>"><i class="fa fa-trash-o"></i></a></td>
                  </tr>
                 <?php } mysqli_close($link);$link = NULL; ?>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.box -->
  </div>
</div>
<!-- /.row -->
<script type="text/javascript">
  function deleteMonth(Id){
  	var iAnswer = confirm("Are you sure you want to delete ?");
	if(iAnswer){
		window.location = '<?php echo WEB_URL;?>setting/vehicle_alert.php?delid=' + Id;
	}
  }
  function validateMe() {
  	if($("#txtMonthName").val() == ''){
		alert('<?php echo $_data['required_1']; ?>');
		$("#txtMonthName").focus();
		return false;
	} else {
		return true;
	}
  }
  </script>

<?php include('../footer.php'); ?>
