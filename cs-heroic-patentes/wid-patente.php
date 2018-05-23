<div id="Topbar" class="Toplevelbox" style="background-image:url(layouts/tibiacom/images/themeboxes/top_level.png);">
    <div class="top_level" style="background:url(layouts/tibiacom/images/themeboxes/bg_top.png)" align="left">
    <?php 

    $a = 1;

    foreach($skills as $skill) {
      echo '<div align="left"><a class="topxx" href="?subtopic=characters&name='.$skill['name'].'" style="font-family: Verdana, Arial, Helvetica; font-size: 11px; color: #ffcc33;">

        <font color="#CCC">&nbsp;&nbsp;&nbsp;&nbsp;'.$a.' - </font>'.$skill['name'].'

        <br>

        <small><font color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Level: ('.$skill['level'].') Resets:('.$skill['reset'].')</font></small>

        <br>

      </a>
      <img src="images/patentes/'. $skill['army_level'] .'.png" style="width: 20px; height: 20px; position: absolute; background-position: 0 0; background-repeat: no-repeat; left: -57px; margin-top: -70px;/>

      <img src="http://outfit-images.ots.me/outfit.php?id='.$skill['looktype'].'&addons='.$skill['lookaddons'].'&head='.$skill['lookhead'].'&body='.$skill['lookbody'].'&legs='.$skill['looklegs'].'&feet='.$skill['lookfeet'].'" width="64" height="64" style="width: 64px; height: 64px; position: absolute; background-position: 0 0; background-repeat: no-repeat; left: -57px; margin-top: -70px;">

      </div>';

      $a++;

    }

    ?>


    <div class="Bottom" style="background-image:url(<?PHP echo $layout_name; ?>/images/general/box-bottom.gif); bottom: -10px; left:-5px;"></div>

  </div>