package uniandes.edu.co.proyecto.modelo;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name="Reservaciones")
public class Reservacion{

    @EmbeddedId
    private ReservacionPK pk;

    public Reservacion()
    {;}

    public Reservacion(Habitacion Habitaciones_id, Servicio Servicios_id, String fecha_reservacion)
    {
        this.pk = new ReservacionPK(Habitaciones_id, Servicios_id, fecha_reservacion);
    }

    public ReservacionPK getPk() {
        return pk;
    }

    public void setPk(ReservacionPK pk) {
        this.pk = pk;
    }

}

