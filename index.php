<?php
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Student Result Management System</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />

    <style>
    </style>
</head>

<body>
    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light nav-tabs">
        <div class="container">
            <div class="card">
                <a class="navbar-brand card-body px-2 py-1 me-0" href="index.php">Result & Examinations-AMS</a>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                    <li class="nav-item"><a class="nav-link " href="find-result.php">Result</a></li>
                    <li class="nav-item"><a class="nav-link " href="find-result.php">Students</a></li>
                    <li class="nav-item"><a class="nav-link " href="admin-login.php">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="pt-2 m-0 px-8 text-center">
        <marquee direction="left" onmouseover="this.stop();" onmouseout="this.start();">
            <ul><a class="link-primary" href="find-result.php">Result for this session has been declared</a></ul>
        </marquee>
    </div>
    <!-- Header - set the background image for the header in the line below-->
    <header class="py-5 bg-image-full" style="background-image: url('images/bg.png')">

    </header>
    <!-- Content section-->
    <section class="py-5">
        <div class="container my-5">
            <div class="row gx-10">
                <div class="col">
                    <h2>Notice Board</h2>
                    <hr color="#000" />

                    <ul class="list-group  mx-auto" >
                        <?php $sql = "SELECT * from tblnotice";
                        $query = $dbh->prepare($sql);
                        $query->execute();
                        $results = $query->fetchAll(PDO::FETCH_OBJ);
                        $cnt = 1;
                        if ($query->rowCount() > 0) {
                            foreach ($results as $result) { ?>
                            <li class="list-group-item w-min">


                             <a href="notice-details.php?nid=<?php echo htmlentities($result->id); ?>"
                                     target="_blank"><?php echo htmlentities($result->noticeTitle); ?>
                            </a>
                            </li>
                            <?php }
                        } ?>

                    </ul>
                    

                </div>
                <div class="col">

                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, laudantium non. Sit autem eum
                        quam voluptatum ipsum explicabo optio molestiae. Repellat eligendi ipsam quae, harum dicta vitae
                        necessitatibus rerum exercitationem.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, laudantium non. Sit autem eum
                        quam voluptatum ipsum explicabo optio molestiae. Repellat eligendi ipsam quae, harum dicta vitae
                        necessitatibus rerum exercitationem.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, laudantium non. Sit autem eum
                        quam voluptatum ipsum explicabo optio molestiae. Repellat eligendi ipsam quae, harum dicta vitae
                        necessitatibus rerum exercitationem.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, laudantium non. Sit autem eum
                        quam voluptatum ipsum explicabo optio molestiae. Repellat eligendi ipsam quae, harum dicta vitae
                        necessitatibus rerum exercitationem.</p>

                </div>
            </div>
        </div>
    </section>


    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Student Result Management System
                <?php echo date('Y'); ?>
            </p>
        </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>