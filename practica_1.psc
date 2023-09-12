Proceso Operaciones
	definir suma, resta, multiplicacion, division, cantidad_1, cantidad_2, respuesta Como Real;
	Escribir "ingrese cantidad_1";
	Leer cantidad_1 ;
	Escribir "ingrese cantidad_2";
	Leer cantidad_2;
	Escribir "1.- suma";
	Escribir "2.- resta";
	Escribir "3.- multiplicacion";
	Escribir "4.- division";
	
	Leer respuesta;
	Segun respuesta Hacer
		1:
			suma<- cantidad_1+cantidad_2;
			escribir "el resultado es, ", suma;
		2:
			resta<- cantidad_1-cantidad_2;
			escribir "el resultado es, ", resta; 
		3:
			multiplicacion<-cantidad_1*cantidad_2;
			escribir "el resultado es, ", multipliacacion;
		4:
			division<- cantidad_1/cantidad_2;
			escribir "el resultado es, ", division;
		De Otro Modo:
			escribir "no se encontro resultado";
	FinSegun
	
FinProceso

