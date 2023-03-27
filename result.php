<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    
  </head>
  <body>
  <div class="container-fluid mb-5 mt-2">
    <div class="row page-title-div">
      <div class="col-md-12">
        <h2 class="title text-center">Result Management System</h2>
      </div>
    </div>
  </div>


   <div class="container ">
    <div class="row border">
      
    <div class="col-sm-2">
  <img src="images/logo.jpg" class="pt-4" width="100%">
    </div>
    <div class="col-sm-1"></div>
    <div class="col-sm-9 pr-5 ml-5">
      <table class="pr-5 ml-5">
        <tr class="center"><td class="h6 text-center fw-bold">Affiliation No.:2130364</td></tr>
        <tr class="center"><td class="h3  text-center fw-bold">ALIGARH MODERN SCHOOL</td></tr>
        <tr class="center"><td class="h3  text-center fw-bold">Anoopshahar Road,Kasimpur Tri-Junction,Near</td></tr>
        <tr class="center"><td class="h5 text-center fw-bold">Cherat,Aligarh</td></tr>
        <tr><td class="text-center fw-bold">  E.mail: aligarhmodernschool@hotmail.com &nbsp; Tel: 08266892164</td></tr>
        <tr><td class="text-center fw-bold">REPORT CARD (Session 2022-23)</td></tr>


         <!-- SQL data fetch work -->
    <?php
                                                // code Student Data
                                                $rollid = $_POST['rollid'];
                                                $classid = $_POST['class'];
                                                $_SESSION['rollid'] = $rollid;
                                                $_SESSION['classid'] = $classid;
                                                $qery = "SELECT   tblstudents.StudentName,tblstudents.RollId,tblstudents.RegDate,tblstudents.StudentId,tblstudents.Status,tblclasses.ClassName,tblclasses.Section from tblstudents join tblclasses on tblclasses.id=tblstudents.ClassId where tblstudents.RollId=:rollid and tblstudents.ClassId=:classid ";
                                                $stmt = $dbh->prepare($qery);
                                                $stmt->bindParam(':rollid', $rollid, PDO::PARAM_STR);
                                                $stmt->bindParam(':classid', $classid, PDO::PARAM_STR);
                                                $stmt->execute();
                                                $resultss = $stmt->fetchAll(PDO::FETCH_OBJ);
                                                $cnt = 1;
                                                if ($stmt->rowCount() > 0) {
                                                    foreach ($resultss as $row) { ?>
        <tr><td class="h5 text-center fw-bold"> CLASS: <?php echo htmlentities($row->ClassName); ?>(
                                                            <?php echo htmlentities($row->Section); ?>)</td></tr>
      </table>
      
    </div>
    <hr>
   
    <table class="table table-bordered" >
      <tr>
        <th>Admission No :</th>
        <td colspan="6" ><?php echo htmlentities($row->RollId); ?></td>
        <td colspan="2">Date of Birth:</td>
        <td colspan="4"><?php echo htmlentities($row->DOB); echo $row->DOB ?> </td>
      </tr>
      <tr>
        <th>Student's Name :</th>
        <td colspan="6"><?php echo htmlentities($row->StudentName); ?></td>
        <td colspan="2" rowspan="2">Address:</td>
        <td colspan="4" rowspan="2"></td>
      </tr>
      <?php }?>
      <tr>
        <th>Father's Name :</th>
        <td colspan="6" ></td>
      </tr>
      <tr>
        <th>Mother's Name :</th>
        <td colspan="6" ></td>
        <td colspan="2">Contact No:</td>
        <td colspan="4"></td>
      </tr>
      <tr>
        <td class="text-center">Scholastic Areas</td>
        <td colspan="6">Term-I (100 Marks)</td>
        <td colspan="6">Term-II (100 Marks)</td>
      </tr>
      <tr>
        <td>SUBJECT</td>
        <td>PA-1(10)</td>
        <td>Note Book(5)/td>
        <td>Sub. Enrich.(5)</td>
        <td>Half Yearly Exam(80)</td>
        <td>Marks Obtained (100)</td>
        <td>Grade</td>
        <td>PA-2(10)</td>
        <td>Note Book(5)/td>
          <td>Sub. Enrich.(5)</td>
          <td>Half Yearly Exam(80)</td>
          <td>Marks Obtained (100)</td>
          <td>Grade</td>
      </tr>
      <!-- test -->
      <?php
                                                            // Code for result
                                                        
$query = "select t.StudentName,t.RollId,t.ClassId,t.marks,SubjectId,tblsubjects.SubjectName from (select sts.StudentName,sts.RollId,sts.ClassId,tr.marks,SubjectId from tblstudents as sts join  tblresult as tr on tr.StudentId=sts.StudentId) as t join tblsubjects on tblsubjects.id=t.SubjectId where (t.RollId=:rollid and t.ClassId=:classid)";
$query = $dbh->prepare($query);
 $query->bindParam(':rollid', $rollid, PDO::PARAM_STR);
$query->bindParam(':classid', $classid, PDO::PARAM_STR);
 $query->execute();
 $results = $query->fetchAll(PDO::FETCH_OBJ);
 $cnt = 1;
 if ($countrow = $query->rowCount() > 0) {
     foreach ($results as $result) {
       ?>
       
<tr>
    <td style="text-align: center">
      <?php echo htmlentities($result->SubjectName); ?>
    </td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td style="text-align: center">
       <?php echo htmlentities($totalmarks = $result->marks); ?>
    </td>
    <td>
      <?php 
      if($totalmarks>90){
        echo "A+";
      }elseif($totalmarks>80){
        echo "A";
      }elseif($totalmarks>70){
        echo "B+";
      }elseif($totalmarks>60){
        echo "B";
      }elseif($totalmarks>50){
        echo "C+";
      }elseif($totalmarks>35){
        echo "C";
      }else{
        echo "E";
      }
      ?>
    </td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td> <?php 
    $totalmarks2;
      if($totalmarks2>90){
        echo "A+";
      }elseif($totalmarks2>80){
        echo "A";
      }elseif($totalmarks2>70){
        echo "B+";
      }elseif($totalmarks2>60){
        echo "B";
      }elseif($totalmarks2>50){
        echo "C+";
      }elseif($totalmarks2>35){
        echo "C";
      }elseif($totalmarks2<35){
        echo "E";
  
      }else{
        echo "";
      }
      ?></td>

</tr>
  <?php
  $totlcount += $totalmarks;
  $cnt++;
  }
}
  ?>
     
      <!-- Blank -->
      <tr>
        <td colspan="13"></td>

      </tr>
      <tr>
        <td></td>
        <td colspan="6">Term-I</td>
        <td colspan="6">Term-II</td>
      </tr>
      <tr>
        <td>GENERAL KNOWEDGE</td>
        <td colspan="6"></td>
        <td colspan="6"></td>
      </tr>
      <tr>
        <td>M.E</td>
        <td colspan="6"></td>
        <td colspan="6"></td>
      </tr>
      <tr>
        <td>ART & CRAFT</td>
        <td colspan="6"></td>
        <td colspan="6"></td>
      </tr>
      <!-- Blank -->
      <tr>
        <td colspan="13"></td>

      </tr>
      <tr>
        <td>Remarks:</td>
        <td colspan="12"></td>
      </tr>     
      <tr>
        <td>Result:</td>
        <td colspan="12"></td>
      </tr>   
        
    </table>
    <table>
    <tr mb-5>
        <td colspan="4">Date:</td>
        <td colspan="4">Class Teacher's Signature: </td>
        <td colspan="4">Principal's Signature:    </td>
      </tr>
    </table>
    
  </div>   <br><br> 
<strong>Note:</strong>
<?php 
                                                } else { ?>

                                                            <div class="alert alert-danger left-icon-alert" role="alert">
                                                                strong>Oh snap!</strong>
                                                                <?php
                                                                echo htmlentities("Invalid Roll Id");
                                                }
                                                ?>

</div>

   </div>
   
   <div class="form-group">

<div class="col-sm-6">
    <a href="index.php">Back to Home</a>
</div>
</div>




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
  </body>
</html>
