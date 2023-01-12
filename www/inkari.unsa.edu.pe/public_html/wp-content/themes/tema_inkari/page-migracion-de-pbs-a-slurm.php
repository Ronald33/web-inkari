<?php
get_header();
get_template_part('page-header');
?>

<div class="container my-5 py-5 z-depth-1 page-section">

    <p class="text-white">El día 8 de mayo del 2021 se realizó una actualización de software de la super-computadora Inkari, uno de los cambios más importantes es la migración de PBS a SLURM, por dicho motivo se deja una breve lista de los comandos más utilizados que permitan a los usuarios adecuar sus jobs a esta tecnología:</p>

    <table class="table table-dark table-bordered table-hover table-striped">
        <thead>
            <tr class="grey lighten-4 text-dark">
                <th><strong>Descripción</strong></th>
                <th><strong>PBS</strong></th>
                <th><strong>SLURM</strong></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Es utilizado para asignar un nombre al job</td>
                <td>#PBS -N name</td>
                <td>#SBATCH -J name</td>
            </tr>
            <tr>
                <td>Utilizado para asignar el tiempo máximo de ejecución del job</td>
                <td>#PBS -l walltime=720:00:00</td>
                <td>#SBATCH -t 720:00:00</td>
            </tr>
            <tr>
                <td>Usado para asignar la cantidad de nodos ha utilizar</td>
                <td>#PBS -l nodes=2</td>
                <td>#SBATCH -N 2</td>
            </tr>
            <tr>
                <td>Se utiliza para asignar la cantidad de procesadores que utilizará cada nodo</td>
                <td>#PBS -l ppn=12</td>
                <td>#SBATCH -tasks-per-node=12</td>
            </tr>
            <tr>
                <td>Usado para establecer el nombre del archivo de la salida de eror</td>
                <td>#PBS -e output.log</td>
                <td>#SBATCH -e output.log</td>
            </tr>
            <tr>
                <td>Usado para establecer el nombre del archivo de la salida estandar.</td>
                <td>#PBS -o output.out</td>
                <td>#SBATCH -e output.out</td>
            </tr>
        </tbody>
    </table>

    <p class="text-white">
        Un ejemplo de estos cambios puede ser observado en la siguiente imágen:
    </p>

    <figure class="figure">
        <img src="<?= get_template_directory_uri(); ?>/images/migracion.png" class="figure-img img-fluid z-depth-1" />
        <figcaption class="text-white text-center figure-caption">Migración de PBS a SLURM del ejemplo de Test-abinit (https://github.com/Ronald33/Test-abinit).</figcaption>
    </figure>

    <p class="text-white">
        Por otra parte el encolamiento de jobs y su respectiva administración también sugrió cambios, a continuación se listan algunos de los comandos más utilizados para estos fines.
    </p>

    <table class="table table-dark table-bordered table-hover table-striped">
        <thead>
            <tr class="grey lighten-4 text-dark">
                <th>Descripción</th>
                <th>PBS</th>
                <th>SLURM</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Comando encargado para encolar los jobs</td>
                <td>qsub nombre_del_archivo</td>
                <td>sbatch nombre_del_archivo</td>
            </tr>
            <tr>
                <td>Comando encargado para listar los jobs que estan en la cola</td>
                <td>qstat</td>
                <td>squeue</td>
            </tr>
            <tr>
                <td>Comando para terminar la ejecución de un job en específico (independientemente si este se esta ejecutando o no)</td>
                <td>qdel id_del_job</td>
                <td>scancel id_del_job</td>
            </tr>
        </tbody>
    </table>

    <p class="text-white">
        Finalmente se aclara que, si bien el objetivo de esta guia es realizar la migración de los jobs PBs a jobs SLURM, actualmente se trataron solamente algunos de los comandos más utilizados, motivo por el cual esta guia aún estará bajo constantes actualizaciónes.
    </p>

</div>

<?php
get_footer();
?>