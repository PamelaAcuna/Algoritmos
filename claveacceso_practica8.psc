Algoritmo clave_acceso 
	
	//Se definen las variables 
	definir clave, menu, ingresa, contador_suma, contador_resta, contador_multiplicacion, contador_division  Como Entero;
	Definir cant1, cant2, suma, resta, multiplicacion, division Como Real;
	Definir salida Como Caracter;
	
	//inicializacion de variables
	clave<-12345;
	contador_suma<-0;
	contador_resta<-0;
	contador_multiplicacion<-0;
	contador_division<-0;
	resta<-0;
	suma<-0;
	multiplicacion<-0;
	division<-0;
	
	//ingresar la clave y hacemos el menu que nos dara la opciones de la calculadora
	Escribir " Ingresa la clave de acceso: ";
	leer ingresa;
	si ingresa=clave Entonces
		Escribir "Bienvenidon al men�";
		Escribir "1.Suma";
		Escribir "2.Resta";
		Escribir "3.Multiplicaci�n";
		Escribir "4.Divisi�n";
		Escribir "5.Salida";
		
		//creamos el ciclo de repetir el cual se guiara de la respuesta que se le asigne al ingresar
		Repetir
			leer menu;
			
			Segun menu Hacer
				1:
					Escribir "ingresa cantidad 1";
					leer cant1;
					escribir "ingresa cantidad 2";
					leer cant2;
					suma<-cant1+cant2;
					contador_suma<-contador_suma+1;
					Escribir "el resultado es", suma;
					Escribir "�Desea continuar?, para salir escribe: 5";
				2:
					Escribir "ingrese cantidad 1";
					leer cant1;
					Escribir "ingresa cantidad 2";
					leer cant2;
					resta<-cant1-cant2;
					contador_resta<-contador_resta+1;
					Escribir "el resultado es", resta;
					Escribir "�Desea continuar?, para salir escribe: 5";
				3:
					Escribir "ingrese cantidad 1";
					leer cant1;
					escribir "ingrese cantidad 2";
					leer cant2;
					multiplicacion<-cant1*cant2;
					contador_multiplicacion<-contador_multiplicacion+1;
					Escribir "el resultado es", multiplicacion;
					Escribir "�Desea continuar?, para salir escribe: 5";
				4:
					Escribir "ingrese cantidad 1";
					leer cant1;
					escribir "ingrese cantidad 2";
					leer cant2;
					division<-cant1/cant2;
					contador_division<-contador_division+1;
					Escribir "el resultado es", division;
					Escribir "�Desea continuar?, para salir escribe: 5";
				5:
					Escribir "Adios";
			FinSegun
			
			//cuando se quiera salir y dejar de ingresar cantidades saldra el total de las operaciones realizadas
			escribir "El resultado total de las sumas es ", suma;
			Escribir "El resultado total de las restas es ", resta;
			Escribir "El resultado total de las multiplicaciones es ", multiplicacion;
			Escribir "El resultado total de las divisiones es ", division;
			
			
		Hasta Que clave=5;
	
		
	SiNo
		escribir "Clave incorrecta, escribela de nuevo";
	FinSi
	
	
		
		
		
		
		
		
		
	
		
		
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo

	//se recibe de entrada una clave de acceso, si la clave es incorrecta que se muestre un mensaje
	//de lo contrario si es correcta se muestra un menu de opciones 1suma 2resta 3mult 4dividir y 5para salir
	//imprimir los resultados

