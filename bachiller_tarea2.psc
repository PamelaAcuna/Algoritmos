Algoritmo cicloformativo
	//definir las variables
	Definir  Bachiller, nombre Como Caracter;
	definir opcion, respuesta Como Entero;
	definir calificacion Como Real;
	
	//pedir que ingresen los datos
	escribir "¿Cuál es tu nombre?";
	leer nombre;
	Escribir "1.tengo un titulo";
	Escribir "2.no tengo un titulo";
	Leer opcion;
	
	//segun la opcion dara la respuesta
	Segun opcion Hacer
		1:
			Escribir "Bienvenido a la universidad";
		2:
			Escribir "lo siento, necesitas realizar una prueba";
			
			Escribir "¿Quieres realizar la prueba?";
			Escribir "1.si quiero";
			Escribir "2.no quiero";
			leer respuesta;
			
			Segun respuesta Hacer
				1:
					escribir "Pronto nos contactaremos contigo";
				2:
					escribir "Gracias, nos vemos";
					
			FinSegun
	
	FinSegun
	
	
	
	
	
FinAlgoritmo
	



