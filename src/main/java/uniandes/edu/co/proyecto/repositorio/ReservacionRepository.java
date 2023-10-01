package uniandes.edu.co.proyecto.repositorio;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import uniandes.edu.co.proyecto.modelo.Reservacion;

public interface ReservacionRepository extends JpaRepository<Reservacion, Integer>{

    //CREATE
    @Modifying
    @Transactional
    @Query(value = "INSERT INTO Reservaciones (Habitaciones_id, Servicios_id, fecha_reservacion) VALUES (:Habitaciones_id, :Servicios_id, :fecha_reservacion)", nativeQuery = true)
    void insertarReservacion(@Param("Habitaciones_id") Integer Habitaciones_id,
                         @Param("Servicios_id") Integer Servicios_id,
                         @Param("fecha_reservacion") String fecha_reservacion);

    //READ
    @Query(value = "SELECT * FROM Reservaciones", nativeQuery = true)
    Collection<Reservacion> darReservaciones();
    @Query(value = "SELECT * FROM Reservaciones WHERE Habitaciones_id = :Habitaciones_id AND Servicios_id = :Servicios_id", nativeQuery = true)
    Collection<Reservacion> darReservacionesPorId(@Param("Habitaciones_id") Integer Habitaciones_id,
                                                  @Param("Servicios_id") Integer Servicios_id);
    @Query(value = "SELECT * FROM Reservaciones WHERE Habitaciones_id = :Habitaciones_id AND Servicios_id = :Servicios_id AND fecha_reservacion = :fecha_reservacion", nativeQuery = true)
    Reservacion darReservacion(@Param("Habitaciones_id") Integer Habitaciones_id,
                               @Param("Servicios_id") Integer Servicios_id,
                               @Param("fecha_reservacion") String fecha_reservacion);

    //No incluimos update porque no se puede, todos los atributos forman parte de la PK, por lo que no puede haber duplicados,
    //La unica forma de "Actualizar" una reservacion de servicio es borrandola y creando otra.

    //DELETE
    @Modifying
    @Transactional
    @Query(value = "DELETE FROM Reservaciones WHERE Habitaciones_id = :Habitaciones_id AND Servicios_id = :Servicios_id AND fecha_reservacion= :fecha_reservacion", nativeQuery = true)
    void eliminarReservacion(@Param("Habitaciones_id") Integer Habitaciones_id,
                             @Param("Servicios_id") Integer Servicios_id,
                             @Param("fecha_reservacion") String fecha_reservacion);
}
