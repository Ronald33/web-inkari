<?php
get_header();
get_template_part('page-header');
?>

<div class="container my-5 py-5 z-depth-1 page-section ronald ronroqui">

    <?php
    if(!post_password_required())
    {
    ?>
	<p class="text-white">
        A continuación se lista algunos recursos de interes relacionados a la supercomputadora Inkari.
    </p>

    <ul class="text-white">
        <li>
            Uso actual de la supercomputadora (del segmento de cálculo): <a class="btn btn-info btn-sm" target="_blank" href="http://190.119.178.178/ganglia/?c=Calculo&m=load_one&r=hour&s=by%20name&hc=4&mc=2">Ver</a>
        </li>
        <li>
            Reporte diario de usuarios que acceden a la supercomputadora: <a class="btn btn-info btn-sm" target="_blank" href="https://drive.google.com/drive/folders/1hH6vj5hE4BWPm_N_Pz9Z1oJx1S0j8pst?usp=sharing">Ver</a>
        </li>
        <li>
            Reporte semanal de <i>jobs</i> ejecutados en la supercomputadora: <a class="btn btn-info btn-sm" target="_blank" href="https://drive.google.com/drive/folders/1Oyl65o74RhXETbba6yIr0nMI0gSljtHV?usp=sharing">Ver</a>
        </li>
        <li>
            Reporte semanal de la cantidad de horas de procesador utilizadas por cada usuario: <a class="btn btn-info btn-sm" target="_blank" href="https://drive.google.com/drive/folders/1zr8luaj5Pe_9pR-fuUxdCe1CbAN1hrnE?usp=sharing">Ver</a>
        </li>
    </ul>

    <?php
    }
    else { echo get_the_password_form(); }
    ?>
</div>

<?php
get_footer();
?>
