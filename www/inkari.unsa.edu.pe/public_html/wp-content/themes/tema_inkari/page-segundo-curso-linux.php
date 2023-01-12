<?php
get_header();
get_template_part('page-header');
?>

<div class="container my-5 py-5 z-depth-1 page-section">
	
	<p class="text-white">
        Este curso se desarrolló en dos sesiones libres y estuvo dirigido a los interesados en hacer uso del supercomputador, en la primera parte se presentó una introducción a Linux, configuración, comandos básicos y uso de editores de texto. En la Segunda parte, nos enfocamos en la seguridad de acceso a través del uso de llaves pública y programación de Scripts.
    </p>

    <p class="text-white">
        Los detalles del curso y los temas tratados se detallan a continuación:
    </p>

    <div id="carouselExampleSlidesOnly" class="carousel slide mb-3" data-ride="carousel">
        <div class="carousel-inner">
            <?php
            $images = ['1.jpg', '2.jpg', '3.jpg', '4.jpg'];
            $counter = 0;

            foreach($images as $image)
            {
                $counter++;
            ?>
                <div class="carousel-item <?=$counter == 1 ? 'active' : ''; ?>">
                    <img class="d-block w-100" src="<?=get_template_directory_uri();?>/images/segunda_charla/<?=$image;?>" />
                </div>
            <?php
            }
            ?>
        </div>
    </div>

    <h4 class="h4 text-white">
        Sesión 1
    </h4>

    <ul class="text-white">
        <li>
            Configuración de una consola linux.
        </li>
        <li>
            Comandos básicos ( ls, cd, touch, mkdir, rmdir, sudo, su, find, etc.).
        </li>
        <li>
            Editores de texto vim u otros (editar, eliminar, copiar y pegar archivos).
        </li>
        <li>
            Añadir sintaxis, y preferencias del usuario.
        </li>
        <li>
            Permisos de archivos (a nivel usuario, grupo y otros usando chmod) y permisos de pertenencia (usando chown).
        </li>
    </ul>

    <h4 class="h4 text-white">
        Sesión 2
    </h4>

    <ul class="text-white">
        <li>
            SSH (llaves públicas, forma de acceso, copiar o enviar archivos scp).
        </li>
        <li>
            Programación con el intérprete bash o .sh (variables, condicionales, operadores).
        </li>
    </ul>

    <p>
        <a href="https://drive.google.com/drive/folders/1TXG302_mmibzilYuYU5STSsdA1Iul03l?usp=sharing" target="_blank">Click para acceder al material utilizado.</a>
    </p>

</div>

<?php
get_footer();
?>
