Algoritmo num_mayor_posicion
	
	//definimos las variables que vamos a necesitar
	definir i, vector, posicion Como entero;
	Definir numero_mayor Como Real;
	 //creamos la dimension del vector
	dimension vector[10];
	
	//inicializamos la variable del numero mayor con una cantidad muy peque�a
	numero_mayor<- -999999999999;
	//creamos el ciclo para en el cual se ingresar� el numero
	para i<-0 hasta 10-1 con paso 1 Hacer
		escribir "ingresa el numero", i;
		leer vector[i];
		//ponemos una condicion donde se compare el numero ingresado con la variable que inicializamos
		si vector[i]>numero_mayor Entonces
			numero_mayor<-vector[i];
			posicion<-i;
		FinSi
		 
	FinPara
	
	//para imprimir al reves
	si numero_mayor>=1000 y numero_mayor<= 5000 Entonces
		Para i<-9 hasta 0 con paso -1 Hacer
			escribir vector[i];
		FinPara
		Escribir "se cumpli� la condici�n";
	SiNo
		Escribir "no se cumple la condci�n";
	FinSi
	
	
	
	escribir "El numero mayor es: ", numero_mayor;
	escribir "La posici�n del n�mero es: ", posicion;
	
FinAlgoritmo










