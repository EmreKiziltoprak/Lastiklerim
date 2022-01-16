
<header>

  
  <!-- Navigation -->
  <nav id="navigation_bar" class="navbar navbar-default">
    <div style="padding-right:140px">
      <div class="navbar-header">
        <button id="menu_slide"
         data-target="#navigation"
          aria-expanded="false"
           data-toggle="collapse"
            class="navbar-toggle collapsed"
             type="button">
              <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div class="header_wrap">
        <div class="user_login">
<?php 
$email=$_SESSION['login'];
$sql ="SELECT FullName FROM tblusers WHERE EmailId=:email ";
$query= $dbh -> prepare($sql);
$query-> bindParam(':email', $email, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
	{

	  }}?>
           <?php if($_SESSION['login']){?>
          <ul>
            <li class="dropdown"> 
              <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i> 

           <i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="dropdown-menu">
            <li><a href="profile.php">Profil Ayarları</a></li>
              <li><a href="update-password.php">Şifre Güncelle</a></li>
            <li><a href="my-booking.php">Favori Lastiklerim</a></li>
            <li><a href="logout.php">Çıkış Yap</a></li>
            <?php } else { ?>
            <?php } ?>
          </ul>
            </li>
          </ul>
        </div>

      </div>

      <div class="collapse navbar-collapse" id="navigation">
          <?php if(strlen($_SESSION['login'])==0)
          {
              ?>
              <div class="login_btn" style=" margin-top: 10px !important;
" >
                  <a href="#loginform" class="btn " data-toggle="modal" data-dismiss="modal">GİRİŞ - KAYIT</a> </div>
          <?php }
          else{

          } ?>

        <ul class="nav navbar-nav">
          <li><a href="index.php">Ana Sayfa</a>    </li>
            <li><a href="car-listing.php">Lastikler</a>

        </ul>
      </div>
    </div>
  </nav>
  <!-- Navigation end --> 
  
</header>