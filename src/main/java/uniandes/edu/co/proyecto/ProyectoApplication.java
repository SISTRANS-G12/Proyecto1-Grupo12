package uniandes.edu.co.proyecto;

import java.util.Collection;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import uniandes.edu.co.proyecto.repositorio.*;
import uniandes.edu.co.proyecto.modelo.*;

@SpringBootApplication
public class ProyectoApplication implements CommandLineRunner{

	@Autowired
	private TipoUsuarioRepository tipoUsuarioRepository;
	private UsuarioRepository usuarioRepository;
	private TipoHabitacionRepository tipoHabitacionRepository;
	private HabitacionRepository habitacionRepository;
	private ServicioRepository servicioRepository;
	private PlanConsumoRepository planConsumoRepository;
	private ReservaRepository reservaRepository;
	private ReservacionRepository reservacionRepository;
	private CheckInRepository checkInRepository;
	private CheckOutRepository checkOutRepository;
	private ConsumoRepository consumoRepository;

	
	public static void main(String[] args) {
		SpringApplication.run(ProyectoApplication.class, args);
	}

	@Override
	public void run(String... arg){
		String opcion;
		String tipoUsuario;
		
		System.out.println("------------------BIENVENIDO AL SISTEMA DE HOTEL DE LOS ALPES------------------");
		while(true){
			tipoUsuario = input("Por favor ingrese su tipo de usuario [CLIENTE|RECEPCIONISTA|EMPLEADO|ADMINISTRADOR|GERENTE]:");
			switch(tipoUsuario.toLowerCase()){
				case "cliente":	
				print("     Opciones:");
				print("     [7] CRUD Reserva de alojamiento");
				print("     [8] CRUD Reserva de servicio de hotel");
				opcion = input("     Por favor seleccione una opcion:");	
				switch(opcion){
					case "7":
					print("          Opciones:");
					print("          [C] CREATE reserva");
					print("          [R] READ reserva");
					print("          [U] UPDATE reserva");
					print("          [D] DELETE reserva");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						String fecha_entrada = input("fecha_entrada:");
						String fecha_salida = input("fecha_salida:");
						Integer numero_personas = Integer.valueOf(input("numero_personas:"));
						Integer check_in = Integer.valueOf(input("check_in"));
						Integer check_out = Integer.valueOf(input("check_out"));
						Integer PlanesConsumo_id = Integer.valueOf(input("PlanesConsumo_id"));
						Integer Habitaciones_id = Integer.valueOf(input("Habitaciones_id"));
						reservaRepository.insertarReserva(fecha_entrada, fecha_salida, numero_personas, check_in, check_out, PlanesConsumo_id, Habitaciones_id);
						break;
						case "R":
						Integer Reservas_id = Integer.valueOf(input("Reservas_id"));
						reservaRepository.darReserva(Reservas_id);
						break;
						case "U":
						Integer id = Integer.valueOf(input("id"));
						String nueva_fecha_entrada = input("nueva_fecha_entrada:");
						String nueva_fecha_salida = input("nueva_fecha_salida:");
						Integer nuevo_numero_personas = Integer.valueOf(input("nuevo_numero_personas:"));
						Integer nuevo_check_in = Integer.valueOf(input("nuevo_check_in"));
						Integer nuevo_check_out = Integer.valueOf(input("nuevo_check_out"));
						Integer nuuevo_PlanesConsumo_id = Integer.valueOf(input("nuevo_PlanesConsumo_id"));
						Integer nuevo_Habitaciones_id = Integer.valueOf(input("nuevo_Habitaciones_id"));
						reservaRepository.actualizarReserva(id, nueva_fecha_entrada, nueva_fecha_salida, nuevo_numero_personas, nuevo_check_in, nuevo_check_out, nuuevo_PlanesConsumo_id, nuevo_Habitaciones_id);
						break;
						case "D":
						Integer idReservaBorrar = Integer.valueOf("id reserva borrar");
						reservaRepository.eliminarReserva(idReservaBorrar);
						break;
					}
					break;
					case "8":
					print("          Opciones:");
					print("          [C] CREATE reservacion");
					print("          [R] READ reservacion");
					print("          [U] UPDATE reservacion");
					print("          [D] DELETE reservacion");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						break;
						case "R":
						break;
						case "U":
						break;
						case "D":
						break;
					}
					break;				
				}	
				break;

				case "recepcionista":
				print("     Opciones:");
				print("     [9] CRUD Check-in");
				print("     [11] CRUD Check-out");
				opcion = input("     Por favor seleccione una opcion:");
				switch(opcion){
					case "9":
					print("          Opciones:");
					print("          [C] CREATE check-in");
					print("          [R] READ check-in");
					print("          [U] UPDATE check-in");
					print("          [D] DELETE check-in");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						break;
						case "R":
						break;
						case "U":
						break;
						case "D":
						break;
					}			
					break;					
					case "11":
					print("          Opciones:");
					print("          [C] CREATE check-out");
					print("          [R] READ check-out");
					print("          [U] UPDATE check-out");
					print("          [D] DELETE check-out");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						break;
						case "R":
						break;
						case "U":
						break;
						case "D":
						break;
					}
					break;
				}
				break;
		
				case "empleado":
				print("     Opciones:");
				print("     [10] CRUD Consumo de un servicio");
				opcion = input("     Por favor seleccione una opcion");
				switch(opcion){
					case "10":
					print("          Opciones:");
					print("          [C] CREATE consumo");
					print("          [R] READ consumo");
					print("          [U] UPDATE consumo");
					print("          [D] DELETE consumo");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						break;
						case "R":
						break;
						case "U":
						break;
						case "D":
						break;
					}
					break;
				}
				break;
	
				case "administrador":
				print("     Opciones:");
				print("     [1] CRUD Tipos de usuario");
				print("     [2] CRUD Usuarios");
				print("     [3] CRUD Tipos de habitacion");
				print("     [4] CRUD Habitaciones");
				print("     [5] CRUD Servicios de hotel");
				print("     [6] CRUD Planes de consumo");
				opcion = input("     Por favor seleccione una opcion:");
				switch(opcion){
					case "1":
					print("          Opciones:");
					print("          [C] CREATE tipo de usuario");
					print("          [R] READ tipo de usuario");
					print("          [U] UPDATE tipo de usuario");
					print("          [D] DELETE tipo de usuario");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						break;
						case "R":
						break;
						case "U":
						break;
						case "D":
						break;
					}
					break;
					case "2":
					print("          Opciones:");
					print("          [C] CREATE usuario");
					print("          [R] READ usuario");
					print("          [U] UPDATE usuario");
					print("          [D] DELETE usuario");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						break;
						case "R":
						break;
						case "U":
						break;
						case "D":
						break;
					}
					break;
					case "3":
					print("          Opciones:");
					print("          [C] CREATE tipo de habitacion");
					print("          [R] READ tipo de habitacion");
					print("          [U] UPDATE tipo de habitacion");
					print("          [D] DELETE tipo de habitacion");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						break;
						case "R":
						break;
						case "U":
						break;
						case "D":
						break;
					}
					break;
					case "4":
					print("          Opciones:");
					print("          [C] CREATE habitacion");
					print("          [R] READ habitacion");
					print("          [U] UPDATE habitacion");
					print("          [D] DELETE habitacion");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						break;
						case "R":
						break;
						case "U":
						break;
						case "D":
						break;
					}
					break;
					case "5":
					print("          Opciones:");
					print("          [C] CREATE servicio");
					print("          [R] READ servicio");
					print("          [U] UPDATE servicio");
					print("          [D] DELETE servicio");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						break;
						case "R":
						break;
						case "U":
						break;
						case "D":
						break;
					}
					break;
					case "6":
					print("          Opciones:");
					print("          [C] CREATE plan de consumo");
					print("          [R] READ plan de consumo");
					print("          [U] UPDATE plan de consumo");
					print("          [D] DELETE plan de consumo");
					opcion = input("          Por favor seleccione una opcion:");
					switch(opcion.toLowerCase()){
						case "C":
						break;
						case "R":
						break;
						case "U":
						break;
						case "D":
						break;
					}
					break;
				}
				break;

				case "gerente":
				print("     Por favor, asome su cabeza por la venta para observar funcionamiento de todo el hotel");
				print("     *El gerente asoma la cabeza por la ventan y ve el funcionamiento de todo el hotel*");
				break;
			}
		}
		
	}

	public String input(String mensaje){
		System.out.println(mensaje);
		Scanner in = new Scanner(System.in);
		String input = in.next();
		return input;
	}

	public void print(String mensaje){
		System.out.println(mensaje);
	}

}
