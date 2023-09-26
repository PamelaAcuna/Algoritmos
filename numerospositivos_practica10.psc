Algoritmo numeros_positivos
	
	//definimos las variables
	
	Definir desea_continuar Como Caracter;
	definir num, suma_num Como Entero;
	//inicializamos las variables y a desea_continuar le damos el valor de si
	//para que podamos cerrar el ciclo
	suma_num<-0;
	num<-1;
	desea_continuar<-"si";
	
	//creamos el ciclo mientras para que se siga repitiendo siempre y cuando
	//sea mayor a 0
	Mientras num>0 hacer
		escribir "ingrese el numero";
		leer num;
		
		si num>0 Entonces
			suma_num<-suma_num+num;
			escribir "¿desea continuar?";
			leer desea_continuar;
			
		FinSi
		
		si num<0 Entonces
			escribir "no se permiten numeros negativos";
		FinSi
		
		
	FinMientras
	
	
	//imprimimos la suma de los numeros positivos
	Escribir "El total de la suma de numeros ingresados es:", suma_num;
	
	
	
	
	
	
	
FinProceso
