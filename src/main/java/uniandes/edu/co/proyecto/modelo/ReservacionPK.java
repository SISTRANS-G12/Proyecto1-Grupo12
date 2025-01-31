package uniandes.edu.co.proyecto.modelo;

import java.io.Serializable;

import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Embeddable
public class ReservacionPK implements Serializable{
 
    //PK y FK  
    @ManyToOne
    @JoinColumn(name = "Habitaciones_id", referencedColumnName = "id")
    private Habitacion Habitaciones_id;

    @ManyToOne
    @JoinColumn(name = "Servicios_id", referencedColumnName = "id")
    private Servicio Servicios_id;

    //PK
    private String fecha_reservacion;

    public ReservacionPK()
    {
        super();
    }

    public ReservacionPK(Habitacion Habitaciones_id, Servicio Servicios_id, String fecha_reservacion)
    {
        super();
        this.Habitaciones_id = Habitaciones_id;
        this.Servicios_id = Servicios_id;
        this.fecha_reservacion = fecha_reservacion;
    }

    //Getters y Setters
    public Habitacion getHabitaciones_id() {
        return Habitaciones_id;
    }

    public void setHabitaciones_id(Habitacion habitaciones_id) {
        Habitaciones_id = habitaciones_id;
    }

    public Servicio getServicios_id() {
        return Servicios_id;
    }

    public void setServicios_id(Servicio servicios_id) {
        Servicios_id = servicios_id;
    }

    public String getFecha_reservacion() {
        return fecha_reservacion;
    }

    public void setFecha_reservacion(String fecha_reservacion) {
        this.fecha_reservacion = fecha_reservacion;
    }





}

