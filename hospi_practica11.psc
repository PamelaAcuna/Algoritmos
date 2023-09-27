Algoritmo hosp_practica10
	
	
	//definimos las variables que vamos a necesitar
	
	definir nombre, padecimiento, deseo_continuar Como Caracter;
	Definir edad, veces, edad_hombres, edad_mujeres, edad_ninos, sexo_elegido, costo, descuento, mujeres_odontologia, hospitalizado Como Entero;
	definir costo_final, total_recaudado Como Entero;
	
	//inicializamos las variables para que al final se impriman los resultados
	deseo_continuar<-"no";
	total_recaudado<-0;
	mujeres_odontologia<-1;
	hospitalizado<-0;
	
	//creamos el ciclo repetir en el cual tendra dentro un "segun" que nos servirá como menú de opciones cuando se ingrese
	//al registro del hospital y este se abrirá dependiendo de si es mujer, hombre o niños. Al final el ciclo se cerrara porque haremos
	//la pregunta de si se deasea continuar y si se desea se tendra que poner un si, en caso contrario ingresaremos el no y
	//nos imprimirá los resultados
	Repetir
		escribir "Ingrese su nombre";
		leer nombre;
		escribir "Sexo";
		escribir "1.Femenino";
		escribir "2.Masculino";
		Escribir "3.Femenino odontologia";
		Escribir "4.Niños";
		leer sexo_elegido;
		
	   Segun sexo_elegido Hacer
		1:
			Escribir "Ingrese edad de la paciente";
			leer edad_mujeres;
			
			si edad_mujeres>=18 o edad_mujeres<=60 Entonces
				Escribir "Ingrese el costo de la consulta";
				leer costo;
				
				descuento<-costo*.20;
				costo_final<-costo-descuento;
				Escribir "El costo del servicio es:", costo_final;
				
			FinSi
			
			
			si edad_mujeres>61 Entonces
				escribir "El costo total de la consulta es", costo;
			FinSi
			
			
		2:
			Escribir "Ingrese edad del paciente";
			leer edad_hombres;
			
			
			Escribir "¿Ha estado hospitalizado por algun padecimiento? Si=1/No=3" ;
			leer hospitalizado;
			
			si hospitalizado=1 Entonces
				hospitalizado<-hospitalizado+1;
				
			FinSi
			
			Escribir "¿Cuantas veces ha estado hospitalizado?";
			leer veces;
			
			
			si veces=2 Entonces
				escribir "Ingrese el costo de la consulta";
				leer costo;
				
				descuento<-costo*.50;
				costo_final<-costo-descuento;
				
				Escribir "El costo final de la consulta es:", costo_final;
				
			SiNo
				Escribir "El costo final de la consulta es:", costo;
				
			FinSi
			
			
		3:
			Escribir "Ingrese edad de la paciente";
			leer edad_mujeres;
			
			si edad_mujeres>=18 o edad_mujeres<=60 Entonces
				Escribir "Ingrese el costo de la consulta";
				leer costo;
				
				descuento<-costo*.20;
				costo_final<-costo-descuento;
				Escribir "El costo del servicio es:", costo_final;
				
			FinSi
			
			si edad_mujeres>61 Entonces
				Escribir "Ingrese el costo de la consulta";
				Leer costo;
				escribir "El costo total de la consulta es", costo_final;
			FinSi
			
			mujeres_odontologia<-mujeres_odontologia+1;
			
		4:
			
			Escribir "Ingrese edad del paciente";
			leer edad_ninos;
			
			si edad_ninos>=0 o edad_ninos<=17 Entonces
				Escribir "Ingrese el costo de la consulta";
				leer costo;
				
				descuento<-costo*.10;
				costo_final<-costo-descuento;
				Escribir "El costo del servicio es:", costo_final;
			FinSi
			
				
	FinSegun
	
	
	total_recaudado<-total_recaudado+costo_final;
	
	Escribir "¿Desea continuar?";
	leer deseo_continuar;
	Hasta Que deseo_continuar="no"
		
				

	//imprimimos los resultados del total de recaudado por citas, las mujeres que fuwron a una cita odontologica y los hombres que
	//han sido hospitalizados por algun padecimiento
Escribir "El total recaudado del hospital es:", total_recaudado;
escribir "El total de mujeres atendidas en odontologia son:", mujeres_odontologia;
escribir "El total de hombres hospitalizados por un padecimiento son:", hospitalizado;
	
	
	
FinAlgoritmo
	