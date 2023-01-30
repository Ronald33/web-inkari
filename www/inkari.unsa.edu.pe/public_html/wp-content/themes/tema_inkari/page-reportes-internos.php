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
            Uso actual de la supercomputadora (del segmento de cálculo): <a class="btn btn-info btn-sm" target="_blank" href="http://inkari.unsa.edu.pe/ganglia/?c=Calculo&m=load_one&r=hour&s=by%20name&hc=4&mc=2">Ver</a>
        </li>
        <li>
            Esquema interno de Inkari: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/document/d/1mJe2ISImhthHNUjyBYrvbxWqvoqdwxHZ5EltV8vVuhM/edit?usp=share_link">Ver</a>
        </li>

        <hr/>

        <li>
            Documentos de la administración (de Wilder): <a class="btn btn-info btn-sm" target="_blank" href="https://drive.google.com/drive/folders/11R7Ri4eCt-MQTH3ZWdBzGhqP8c4EhlRX?usp=share_link">Ver</a>
        </li>
        <li>
            Consideraciones en la instalación de librerías: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/document/d/1yO0cLtm9RRCrLq28KpOWoEnd3TIIpQ-GmEIMcwFDNLs/edit?usp=share_link">Ver</a>
        </li>
        <li>
            Uso de CPU en los años 2022 y 2023: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/document/d/1XlUxLFkPui4zWZJkEbyW399Oe7WWBLmj8jqnO_Dc7lY/edit?usp=sharing">Ver</a>
        </li>
        <li>
            Reporte de incidencias de la supercomputadora Inkari: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/document/d/1_zr_xvPHk70K4QbbMa8yLjndUDyrmjtrYPB_iQfRokQ/edit?usp=sharing">Ver</a>
        </li>

        <li>
            Reportes automáticos: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/document/d/1XeF6HFCBAurFvDGGnAq7kFKZDwZeOkhavbL1uLNXkuU/edit?usp=sharing">Ver</a>
        </li>

        <li>
            Algunos conceptos del procesamiento distribuído: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/document/d/16oMLlBHmB6euopwCLivgdvJcHfQ7cypmcYOPLrlNdc8/edit?usp=sharing">Ver</a>
        </li>

        <hr/>
        
        <li>
            Reporte diario de usuarios que acceden a la supercomputadora: <a class="btn btn-info btn-sm" target="_blank" href="https://drive.google.com/drive/folders/1hH6vj5hE4BWPm_N_Pz9Z1oJx1S0j8pst?usp=sharing">Ver</a>
        </li>
        <li>
            Reporte semanal de <i>jobs</i> ejecutados en la supercomputadora: <a class="btn btn-info btn-sm" target="_blank" href="https://drive.google.com/drive/folders/1Oyl65o74RhXETbba6yIr0nMI0gSljtHV?usp=sharing">Ver</a>
        </li>
        <li>
            Reporte semanal de la cantidad de horas de procesador utilizadas por cada usuario: <a class="btn btn-info btn-sm" target="_blank" href="https://drive.google.com/drive/folders/1zr8luaj5Pe_9pR-fuUxdCe1CbAN1hrnE?usp=sharing">Ver</a>
        </li>

        <hr/>

        <li>
            Proceso de encendido de la supercomputadora: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/document/d/1xvMhOGfXNFXL3UKRTXmCCiILTzgMWa0hInH80Q8uYLo/edit?usp=sharing">Ver</a>
        </li>

        <hr/>
        
        <li>
            Informe portal para el proyecto URQU: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/document/d/1BjqHabjYoV6W2WeA5nmfsT88JrXA19oVvks4YYjtwXw/edit?usp=sharing">Ver</a>
        </li>

        <li>
            Solicitudes de registro: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/spreadsheets/d/1cWBTPwLY4oIFk0UYx9N7yBjJLkEynl7dRUM07qYXz5I/edit#gid=629575200">Ver</a>
        </li>
        <li>
            Solicitudes aceptadas: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/spreadsheets/d/1R2rgRVuIgqpFbaI1iOQ9It9xupAZcslpo0V2YfMPOfU/edit#gid=1088290441?usp=sharing">Ver</a>
        </li>

        <hr/>
        <li>
            Actividades de mantenimiento: <a class="btn btn-info btn-sm" target="_blank" href="https://docs.google.com/spreadsheets/d/1u7II4yBcCMi_Ze1ON3PhA6wb7LihYVecfJmfxTuGn9w/edit?usp=sharing">Ver</a>
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
