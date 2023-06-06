<?php
$id = $_GET['id'];
    $push = "select * from tea where id_tea=".$id."";
    $tovar = mysqli_query($db, $push);
    $row = mysqli_fetch_array($tovar)
?>
<div>
<img class="img_tovar" src="img/tea/<?php echo $row['img']; ?>" alt="">
    <p ><?php echo $row['name']; ?></p>
    <p >Цена: <?php echo $row['price']; ?> руб./унция</p>
    <p > Страна-изготовитель: <?php echo $row['contry']; ?></p>
    <p > Вкус: <?php echo $row['vkus']; ?></p>
    <?php if($row['ingr'] != ""){ ?>
        <p > Ингридиенты: <?php echo $row['ingr']; ?></p>
    <?php } ?>
    <?php if($row['main_note'] != ""){ ?>
        <p > Основные ноты: <?php echo $row['main_note']; ?></p>
    <?php } ?>
    <p > Информация: <?php echo $row['info']; ?></p>
</div>
