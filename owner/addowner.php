<?php 
include('../header.php');
include('../utility/common.php');
include(ROOT_PATH.'language/'.$lang_code_global.'/lang_add_owner.php');
if(!isset($_SESSION['objLogin'])){
	header("Location: " . WEB_URL . "logout.php");
	die();
}
$success = "none";
$o_name = '';
$o_email = '';
$o_contact = '';
$o_pre_address = '';
$o_per_address = '';

$o_flat_no = '';
$o_building_no = '';
$o_road_no = '';
$o_block_no = '';
$o_area = '';


$o_nid = '';
$o_password = '';
$owner_unit = '';
$branch_id = '';
$title = $_data['add_new_owner'];
$button_text = $_data['save_button_text'];
$successful_msg = $_data['added_owner_successfully'];
$form_url = WEB_URL . "owner/addowner.php";
$id="";
$hdnid="0";
$image_own = WEB_URL . 'img/no_image.jpg';
$img_track = '';
$rowx_unit = array();

if(isset($_POST['txtOwnerName'])){
	if(isset($_POST['hdn']) && $_POST['hdn'] == '0'){
		$o_password = $converter->encode($_POST['txtPassword']);
		$image_url = uploadImage();
		$sql = "INSERT INTO tbl_add_owner(o_name,o_email, o_contact, o_pre_address,o_per_address,o_flat_no,o_building_no,o_road_no,o_block_no,o_area,o_nid,o_password,image,branch_id) values('$_POST[txtOwnerName]','$_POST[txtOwnerEmail]','$_POST[txtOwnerContact]','$_POST[txtOwnerPreAddress]','$_POST[txtOwnerPerAddress]','$_POST[o_flat_no]','$_POST[o_building_no]','$_POST[o_road_no]','$_POST[o_block_no]','$_POST[o_area]','$_POST[txtOwnerNID]','$o_password','$image_url','" . $_SESSION['objLogin']['branch_id'] . "')";
		mysqli_query($link,$sql);
	 	$last_id = mysqli_insert_id($link);
	  	if(isset($_POST['ChkOwnerUnit'])){/*if open */
			foreach ($_POST['ChkOwnerUnit'] as $value) {   /*foreach open */
				$sql_unit="INSERT INTO `tbl_add_owner_unit_relation`(owner_id,unit_id) VALUES($last_id,$value)";
				mysqli_query($link,$sql_unit);	 
			}  /* foreach close */
		} else {
			echo "No results";  
		}
		mysqli_close($link);
		$url = WEB_URL . 'owner/ownerlist.php?m=add';
		header("Location: $url");
	} else {
		$image_url = uploadImage();
		if($image_url == ''){
			$image_url = $_POST['img_exist'];
		}
		$sql = "UPDATE `tbl_add_owner` SET `o_name`='".$_POST['txtOwnerName']."',`o_email`='".$_POST['txtOwnerEmail']."',`o_password`='".$converter->encode($_POST['txtPassword'])."',`o_contact`='".$_POST['txtOwnerContact']."',`o_pre_address`='".$_POST['txtOwnerPreAddress']."',`o_per_address`='".$_POST['txtOwnerPerAddress']."',`o_flat_no`='".$_POST['o_flat_no']."', `o_building_no`='".$_POST['o_building_no']."', `o_road_no`='".$_POST['o_road_no']."', `o_block_no`='".$_POST['o_block_no']."', `o_area`='".$_POST['o_area']."', `o_nid`='".$_POST['txtOwnerNID']."',`image`='".$image_url."' WHERE ownid='".$_GET['id']."'";
		mysqli_query($link,$sql);
		if(isset($_POST['ChkOwnerUnit'])){  /* if open */
			$sql_unit= "DELETE FROM `tbl_add_owner_unit_relation` WHERE owner_id = ".$_GET['id'];
			mysqli_query($link,$sql_unit);
			foreach ($_POST['ChkOwnerUnit'] as $value) {  /* foreach open */
				$sql_unit="INSERT INTO `tbl_add_owner_unit_relation`(owner_id,unit_id) VALUES('$_GET[id]',$value)";
				mysqli_query($link,$sql_unit);
			}  /* foreach close */
		  } /* if close */
		  else {
				$sql_unit= "DELETE FROM `tbl_add_owner_unit_relation` WHERE owner_id = ".$_GET['id'];
				mysqli_query($link,$sql_unit); 
		  }
		$url = WEB_URL . 'owner/ownerlist.php?m=up';
		header("Location: $url");
	} 
	$success = "block";
}

if(isset($_GET['id']) && $_GET['id'] != ''){
	$result = mysqli_query($link,"SELECT * FROM tbl_add_owner where ownid = '" . $_GET['id'] . "'");
	if($row = mysqli_fetch_array($result)){
		$o_name = $row['o_name'];
		$o_email = $row['o_email'];
		$o_contact = $row['o_contact'];
		$o_pre_address = $row['o_pre_address'];
		$o_per_address = $row['o_per_address'];
		
		$o_flat_no = $row['o_flat_no'];
		$o_building_no = $row['o_building_no'];
		$o_road_no = $row['o_road_no'];
		$o_block_no = $row['o_block_no'];
		$o_area = $row['o_area'];
		
		$o_password = $converter->decode($row['o_password']);
		$o_nid = $row['o_nid'];
		if($row['image'] != ''){
			$image_own = WEB_URL . 'img/upload/' . $row['image'];
			$img_track = $row['image'];
		}
		$hdnid = $_GET['id'];
		$title = $_data['update_owner'];
		$button_text = $_data['update_button_text'];
		$successful_msg = $_data['update_owner_successfully'];
		$form_url = WEB_URL . "owner/addowner.php?id=".$_GET['id'];
	}
	$result_unit = mysqli_query($link,"SELECT unit_id FROM tbl_add_owner_unit_relation where owner_id = '" . $_GET['id'] . "'");
	while($row_unit = mysqli_fetch_array($result_unit)){
		array_push($rowx_unit,$row_unit['unit_id']);
	}
}
//for image upload
function uploadImage(){
	if((!empty($_FILES["uploaded_file"])) && ($_FILES['uploaded_file']['error'] == 0)) {
	  $filename = basename($_FILES['uploaded_file']['name']);
	  $ext = substr($filename, strrpos($filename, '.') + 1);
	  if(($ext == "jpg" && $_FILES["uploaded_file"]["type"] == 'image/jpeg') || ($ext == "png" && $_FILES["uploaded_file"]["type"] == 'image/png') || ($ext == "gif" && $_FILES["uploaded_file"]["type"] == 'image/gif')){   
	  	$temp = explode(".",$_FILES["uploaded_file"]["name"]);
	  	$newfilename = NewGuid() . '.' .end($temp);
		move_uploaded_file($_FILES["uploaded_file"]["tmp_name"], ROOT_PATH . '/img/upload/' . $newfilename);
		return $newfilename;
	  }
	  else{
	  	return '';
	  }
	}
	return '';
}
function NewGuid() { 
    $s = strtoupper(md5(uniqid(rand(),true))); 
    $guidText = 
        substr($s,0,8) . '-' . 
        substr($s,8,4) . '-' . 
        substr($s,12,4). '-' . 
        substr($s,16,4). '-' . 
        substr($s,20); 
    return $guidText;
}

//booked//
$booked = array();
$result_booked = mysqli_query($link,"SELECT * FROM tbl_add_owner_unit_relation");
while($row_booked = mysqli_fetch_array($result_booked))
{
	array_push($booked,$row_booked['unit_id']);
}
?>
<!-- Content Header (Page header) -->

<section class="content-header">
  <h1><?php echo $title;?></h1>
  <ol class="breadcrumb">
    <li><a href="<?php echo WEB_URL?>/dashboard.php"><i class="fa fa-dashboard"></i><?php echo $_data['home_breadcam'];?></a></li>
    <li class="active"><?php echo $_data['add_new_owner_information_breadcam'];?></li>
    <li class="active"><?php echo $title;?></li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
<!-- Full Width boxes (Stat box) -->
<div class="row">
  <div class="col-md-12">
    <div align="right" style="margin-bottom:1%;">  </div>
    <div class="box box-success">
      <div class="box-header">
        <h3 class="box-title"><?php echo $_data['add_new_owner_entry_form'];?></h3>
      </div>
      <form onsubmit="return validateMe();" action="<?php echo $form_url; ?>" method="post" enctype="multipart/form-data" id="frm_owner_entry">
        <div class="box-body row">
          <div class="form-group col-md-6">
            <label for="txtOwnerName"><span class="errorStar">*</span> <?php echo $_data['add_new_form_field_text_1'];?> :</label>
            <input type="text" name="txtOwnerName" value="<?php echo $o_name;?>" id="txtOwnerName" class="form-control" />
          </div>
          <div class="form-group col-md-6">
            <label for="txtOwnerEmail"><span class="errorStar">*</span> <?php echo $_data['add_new_form_field_text_2'];?> :</label>
            <input type="email" name="txtOwnerEmail" value="<?php echo $o_email;?>" id="txtOwnerEmail" class="form-control" required />
          </div>
          <div class="form-group col-md-6">
            <label for="txtPassword"><span class="errorStar">*</span> <?php echo $_data['add_new_form_field_text_3'];?> :</label>
            <input type="text" name="txtPassword" value="<?php echo $o_password;?>" id="txtPassword" class="form-control" />
          </div>
          <div class="form-group col-md-6">
            <label for="txtOwnerContact"><span class="errorStar">*</span> <?php echo $_data['add_new_form_field_text_4'];?> :</label>
            <input type="text" name="txtOwnerContact" value="<?php echo $o_contact;?>" id="txtOwnerContact" class="form-control" />
          </div>
          <div class="form-group col-md-6">
            <label for="txtOwnerPreAddress"><span class="errorStar">*</span> <?php echo $_data['add_new_form_field_text_5'];?> :</label>
            <textarea name="txtOwnerPreAddress" id="txtOwnerPreAddress" class="form-control"><?php echo $o_pre_address;?></textarea>
          </div>
          <div class="form-group col-md-6">
            <label for="txtOwnerPerAddress"><span class="errorStar">*</span> <?php echo $_data['add_new_form_field_text_6'];?> :</label>
            <textarea name="txtOwnerPerAddress" id="txtOwnerPerAddress" class="form-control"><?php echo $o_per_address;?></textarea>
          </div>
		  
		  
		  
		  <div class="form-group col-md-6">
            <label for="o_flat_no"><span class="errorStar">*</span> Flat/ Villa No  :</label>
            <input type="text" name="o_flat_no" value="<?php echo $o_flat_no; ?>" id="o_flat_no" class="form-control">
    
          </div> <div class="form-group col-md-6">
            <label for="o_building_no"><span class="errorStar">*</span> Building No :</label>
            <input type="text" name="o_building_no" value="<?php echo $o_building_no; ?>" id="o_building_no" class="form-control">
          </div>

           <div class="form-group col-md-4">
            <label for="o_road_no"><span class="errorStar">*</span> Road No :</label>
            <input type="text" name="o_road_no" value="<?php echo $o_road_no; ?>" id="o_road_no" class="form-control">
          </div>
		  
           <div class="form-group col-md-4">
            <label for="o_block_no"><span class="errorStar">*</span> Block No :</label>
            <input type="text" name="o_block_no" value="<?php echo $o_block_no; ?>" id="o_block_no" class="form-control">
          </div>
          <div class="form-group col-md-4">
            <label for="o_area"><span class="errorStar">*</span> Area :</label>
            <input type="text" name="o_area" value="<?php echo $o_area; ?>" id="o_area" class="form-control">
          </div>
        
		
		
          <div class="form-group col-md-12">
            <label for="txtOwnerNID"><span class="errorStar">*</span> <?php echo $_data['add_new_form_field_text_7'];?> :</label>
            <input type="text" name="txtOwnerNID" value="<?php echo $o_nid;?>" id="txtOwnerNID" class="form-control" />
          </div>
          <div class="form-group col-md-12">
            <label for="ChkOwnerUnit"><?php echo $_data['add_new_form_field_text_8'];?> :</label>
            <div style="height:150px;border:solid 1px #ccc;overflow:auto">
              <?php 
				$result_unit = mysqli_query($link,"SELECT *,f.floor_no as fl_floor FROM tbl_add_unit u inner join tbl_add_floor f on u.floor_no = f.fid where u.branch_id='" . $_SESSION['objLogin']['branch_id'] . "' order by u.unit_no ASC");
				while($row_unit = mysqli_fetch_array($result_unit)){?>
              <div style="margin-left:.7%;">
                <label>
                <input class="" type="checkbox" <?php if(!empty($rowx_unit)){if(in_array($row_unit['uid'],$rowx_unit)){echo 'checked';} }?> value="<?php echo $row_unit['uid'];?>" name="ChkOwnerUnit[]" id="ChkOwnerUnit[]" />
                <?php if(in_array($row_unit['uid'],$booked)) { ?>
					<label style="text-decoration: line-through;color:red;"><?php echo $row_unit['unit_no']; ?>&nbsp;<?php echo '('.$row_unit['fl_floor'].')'; ?> </label>
					<?php } else { ?>
					<label><?php echo $row_unit['unit_no']; ?>&nbsp;<?php echo '('.$row_unit['fl_floor'].')'; ?></label>
				<?php } ?>
              </div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group col-md-12">
            <label for="Prsnttxtarea"><?php echo $_data['add_new_form_field_text_9'];?> :</label>
            <img class="form-control" src="<?php echo $image_own; ?>" style="height:100px;width:100px;" id="output"/>
            <input type="hidden" name="img_exist" value="<?php echo $img_track; ?>" />
          </div>
          <div class="form-group col-md-12"> <span class="btn btn-file btn btn-default"><?php echo $_data['upload_image'];?>
            <input type="file" name="uploaded_file" onchange="loadFile(event)" />
            </span> </div>
        </div>
		<div class="box-footer">
			<div class="form-group pull-right">
				<?php if($hdnid=='0') { ?>
				<button type="button" onclick="owner_email_exist();" name="button" class="btn btn-success"><i class="fa fa-floppy-o"></i> <?php echo $button_text; ?></button>
				<?php } else { ?>
				<button type="submit" name="button" class="btn btn-success"><i class="fa fa-floppy-o"></i> <?php echo $button_text; ?></button>
				<?php } ?>
				<a class="btn btn-warning" href="<?php echo WEB_URL; ?>owner/ownerlist.php"><i class="fa fa-reply"></i> <?php echo $_data['back_text'];?></a>
          	</div>
		</div>
        <input type="hidden" value="<?php echo $hdnid; ?>" name="hdn"/>
      </form>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
</div>
<!-- /.row -->
<script type="text/javascript">
function validateMe(){
	if($("#txtOwnerName").val() == ''){
		alert("<?php echo $_data['owner_name_required']; ?>");
		$("#txtOwnerName").focus();
		return false;
	}
	else if($("#txtOwnerEmail").val() == '' || !checkValidEmail('txtOwnerEmail')){
		alert("<?php echo $_data['owner_email_required']; ?>");
		$("#txtOwnerEmail").focus();
		return false;
	}
	else if($("#txtPassword").val() == ''){
		alert("<?php echo $_data['owner_password']; ?>");
		$("#txtPassword").focus();
		return false;
	}
	else if($("#txtOwnerContact").val() == ''){
		alert("<?php echo $_data['owner_contact']; ?>");
		$("#txtOwnerContact").focus();
		return false;
	}
	else if($("#txtOwnerPreAddress").val() == ''){
		alert("<?php echo $_data['owner_present_address']; ?>");
		$("#txtOwnerPreAddress").focus();
		return false;
	}
	else if($("#txtOwnerPerAddress").val() == ''){
		alert("<?php echo $_data['owner_permanent_address']; ?>");
		$("#txtOwnerPerAddress").focus();
		return false;
	}
	else if($("#txtOwnerNID").val() == ''){
		alert("<?php echo $_data['owner_nid_no']; ?>");
		$("#txtOwnerNID").focus();
		return false;
	}
	else{
		return true;
	}
}

//check owner email exist or not
function owner_email_exist(){
   var email = $("#txtOwnerEmail").val();
   if(email != ''){
	   $.ajax({
		  url: '../ajax/getunit.php',
		  type: 'POST',
		  data: 'email='+email+'&token=owner_email_exist',
		  dataType: 'json',
		  success: function(data) {
			 if(data != '-99'){
			 	if(data.email_exist){
					alert('<?php echo $_data['email_exist']; ?>');
					$("#txtOwnerEmail").focus();
				} else {
					jQuery("#frm_owner_entry").submit();
				}
			 }
			 else{
			 	window.location.href = '../index.php';
			 }
		  }
	   });
   } else {
   		$("#frm_owner_entry").submit();
   }
}

</script>
<?php include('../footer.php'); ?>
