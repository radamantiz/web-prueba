<?php 
    require_once "Conexion.php";
    class CrudReserva extends Conexion{
        public function mostrarDatosReserva(){
           $sql="SELECT r.idReserva,
                        u.primerNombre,
                        u.segundoNombre,
                        u.primerApellido,
                        u.segundoApellido,
                        r.fecha,
                        r.horaInicio,
                        r.horaFin,
                        r.asistentes,
                        a.idAmbiente,
                        a.nombre,
                        r.uso
                from usuario as u inner join reserva as r on u.idUsuario = r.FK_solicitante inner join ambiente as a on r.FK_ambiente = a.idAmbiente and r.activo = 1 order by r.idReserva desc";
            $query=Conexion::conectar()->prepare($sql);
            $query->execute();
            return $query->fetchAll();
            $query->close; 
        }
    }
?>