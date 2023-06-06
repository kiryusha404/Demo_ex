<?php
    if(isset($_GET['id'])){
    $id = $_GET['id'];
    }
    if(isset($id)){
        if($id != 0){
            $push = "select * from tea where part = ".$id." order by id_tea DESC";
        }
        else{
            $push = "select * from tea order by id_tea DESC";
        }
    }else{
    $push = "select * from tea order by id_tea DESC";
    }
    $catalog = mysqli_query($db, $push);
    $push = "SELECT * FROM `part_tea`";
    $category = mysqli_query($db, $push);
?>
<div>
<p><a href="catalog.php?id=0">Все</a></p>
<?php
    while($rew = mysqli_fetch_array($category)){
?>
    <p><a href="catalog.php?id=<?php echo $rew['id_part']; ?>"><?php echo $rew['name']; ?></a></p>
<?php } ?>
</div>

<div class="catalog">
<?php
    while($row = mysqli_fetch_array($catalog)){
?>
    <a href="tovar.php?id=<?php echo $row['id_tea']; ?>">
        <div class="tovar">
            <img class="tovar_element" src="img/tea/<?php echo $row['img']; ?>" alt="">
            <p class="tovar_element"><?php echo $row['name']; ?></p>
            <p class="tovar_element">Цена: <?php echo $row['price']; ?> руб./унция</p>

        </div>
    </a>
<?php
    }
?>
</div>