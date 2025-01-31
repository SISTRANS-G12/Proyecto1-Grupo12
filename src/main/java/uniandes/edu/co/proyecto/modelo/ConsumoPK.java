package uniandes.edu.co.proyecto.modelo;

import java.io.Serializable;

import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Embeddable
public class ConsumoPK implements Serializable{
 
    //PK y FK  
    @ManyToOne
    @JoinColumn(name = "Habitaciones_id", referencedColumnName = "id")
    private Habitacion Habitaciones_id;

    @ManyToOne
    @JoinColumn(name = "Servicios_id", referencedColumnName = "id")
    private Servicio Servicios_id;

    //PK
    private String fecha_consumo;

    public ConsumoPK()
    {
        super();
    }

    public ConsumoPK(Habitacion Habitaciones_id, Servicio Servicios_id, String fecha_consumo)
    {
        super();
        this.Habitaciones_id = Habitaciones_id;
        this.Servicios_id = Servicios_id;
        this.fecha_consumo = fecha_consumo;
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

    public String getFecha_consumo() {
        return fecha_consumo;
    }

    public void setFecha_consumo(String fecha_consumo) {
        this.fecha_consumo = fecha_consumo;
    }





}

