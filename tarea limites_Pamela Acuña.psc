Algoritmo limites
	
	
	//se definen las variables
	definir limite_inferior, limite_superior, suma, num_fuera, num_iguales Como entero;
	definir num, contador Como Entero;
	
	//se inicializan para poder llevar un conteo y suma de lo que se nos pide
	contador<-0;
	limite_inferior<-0;
	limite_superior<-0;
	num<-0;
	suma<-0;
	num_fuera<-0;
	num_iguales<-0;
	
	//se pide que ingreses los limites
	escribir "Ingresa el limite superior";
	leer limite_superior;
	Escribir "Ingresa el limite inferior";
	leer limite_inferior;
	
	//se hace la condicion de que si el limite inferior es mayor al limite superior tienes que volver a ingresar la cantidad
	//para que puedas ingresar las cantidades
	si limite_inferior>limite_superior Entonces
		Escribir "Vuelva a ingresar la cantidad";
		escribir "Ingresa el limite superior";
		leer limite_superior;
		Escribir "Ingresa el limite inferior";
		leer limite_inferior;
	FinSi
	
	//se crea el ciclo de repetir en donde se ingresaran las cantidades y hasta que se ingrese un 0 se saldra del ciclo
	Repetir 
		Escribir "Ingresa cantidad";
		leer num;
		suma<-suma+num;
		si (num>limite_superior o num<limite_inferior) Entonces
			num_fuera<-num_fuera+1;
		FinSi
		
			si (num=limite_inferior o num=limite_superior) entonces
				num_iguales<-num_iguales+1;
			FinSi
		
	Hasta Que num=0
	
	//se imprimen los resultados de los numeros que estan dentro del intervalo, la suma y los numeros que son iguales
	escribir "La suma de los numeros que estan dentro del intervalo es: ", suma;
	escribir "Los numeros que estan fuera del intervalos son: ", num_fuera;
	Escribir "Los numeros iguales a los intervalos son: ", num_iguales;
	
	
	
	
FinAlgoritmo
