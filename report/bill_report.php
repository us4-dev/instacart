<?php
include('../header.php');
include(ROOT_PATH.'language/'.$lang_code_global.'/lang_bill_report.php');
if(!isset($_SESSION['objLogin'])){
	header("Location: " . WEB_URL . "logout.php");
	die();
}
?>

<section class="content-header">
  <h1><?php echo $_data['text_1'];?></h1>
  <ol class="breadcrumb">
    <li><a href="<?php echo WEB_URL?>dashboard.php"><i class="fa fa-dashboard"></i> <?php echo $_data['home_breadcam'];?></a></li>
    <li class="active"><a href="<?php echo WEB_URL?>report/report.php"><?php echo $_data['text_2'];?></a></li>
    <li class="active"><a href="<?php echo WEB_URL?>report/bill_report.php"><?php echo $_data['text_1'];?></a></li>
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
        <h3 class="box-title"><?php echo $_data['text_3'];?></h3>
      </div>
        <div class="box-body">
		<div class="form-group">
          <label for="ddlVDate"><?php echo $_data['text_4'];?> :</label>
          <input type="text" name="ddlVDate" id="ddlVDate" class="datepicker form-control" />
        </div>
          <div class="form-group">
            <label for="ddlMonth"><?php echo $_data['text_5'];?> :</label>
            <select name="ddlMonth" id="ddlMonth" class="form-control">
              <option value="">--<?php echo $_data['text_5'];?>--</option>
              <?php 
				  	$result_month = mysqli_query($link,"SELECT * FROM tbl_add_month_setup order by m_id ASC");
					while($row_month = mysqli_fetch_array($result_month)){?>
              <option value="<?php echo $row_month['m_id'];?>"><?php echo $row_month['month_name'];?></option>
              <?php } ?>
            </select>
          </div>
          <div class="form-group">
            <label for="ddlYear"><?php echo $_data['text_6'];?> :</label>
            <select name="ddlYear" id="ddlYear" class="form-control">
              <option value="">--<?php echo $_data['text_6'];?>--</option>
              <?php 
				  	$result_month = mysqli_query($link,"SELECT * FROM tbl_add_year_setup order by y_id ASC");
					while($row_month = mysqli_fetch_array($result_month)){?>
              <option value="<?php echo $row_month['y_id'];?>"><?php echo $row_month['xyear'];?></option>
              <?php } ?>
            </select>
          </div>
          <div class="form-group pull-right">
            <input type="button" onclick="getVisitorsInfo()" value="<?php echo $_data['submit'];?>" class="btn btn-success"/>
          </div>
        </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
</div>
<!-- /.row -->

<script type="text/javascript">
	function getVisitorsInfo(){
		var bill_date = $("#ddlVDate").val();
		var month_id = $("#ddlMonth").val();
		var xyear = $("#ddlYear").val();
		
		if(bill_date == '' && month_id == '' && xyear == ''){
			alert('<?php echo $_data['required']; ?>');
		} else {
			window.open('<?php echo WEB_URL;?>report/bill_info.php?vid=' + bill_date + '&mid=' + month_id + '&yid=' + xyear,'_blank');
		}
		/*else if(bill_date != '' && month_id != ''){
			window.open('report/bill_info_date_month.php?vid=' + bill_date + '&mid=' + month_id,'_blank');
		}
		else if(month_id != '' && xyear != ''){
			window.open('report/bill_info_month_year.php?mid=' + month_id + '&yid=' + xyear,'_blank');
		}
		else if(bill_date != '' && xyear != ''){
			window.open('report/bill_info_date_year.php?vid=' + bill_date + '&yid=' + xyear,'_blank');
		}
		else if(bill_date != ''){
			window.open('report/bill_info_date.php?vid=' + bill_date,'_blank');
		}
		else if(month_id != ''){
			window.open('report/bill_info_month.php?mid=' + month_id,'_blank');
		}
		else if(xyear != ''){
			window.open('report/bill_info_year.php?yid=' + xyear,'_blank');
		}
		else{
			alert('Please select at least one or more fields');
		}*/
	}
</script>

<?php include('../footer.php'); ?>
