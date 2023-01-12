<?php
get_header();
get_template_part('page-header');
?>

<div class="container my-5 py-5 z-depth-1 page-section">
	
	<p class="text-white">
        Curso de orientación dirigido a investigadores de la Universidad Nacional de San Agustin, quienes harán uso del supercomputador en sus proyectos de investigación.
    </p>

    <div id="carouselExampleSlidesOnly" class="carousel slide mb-3" data-ride="carousel">
        <div class="carousel-inner">
            <?php
            $images = ['1.jpg', '2.jpg'];
            $counter = 0;

            foreach($images as $image)
            {
                $counter++;
            ?>
                <div class="carousel-item <?=$counter == 1 ? 'active' : ''; ?>">
                    <img class="d-block w-100" src="<?=get_template_directory_uri();?>/images/primera_charla/<?=$image;?>" />
                </div>
            <?php
            }
            ?>
        </div>
    </div>

    <p class="text-white">
        En este primer curso se presenta información sobre las características del software y estado actual del Cluster. Adicionalmente, se informó a los interesados sobre como acceder a Inkari y se presentó información útil y orientación para sus proyectos de investigación.
    </p>

    <p>
        <a href="https://drive.google.com/file/d/1iwqXFG5E8o-bMqnuf4SitC3VYh0Evn80/view?usp=sharing" target="_blank">Click para acceder al material utilizado.</a>
    </p>

</div>

<?php
get_footer();
?>
