Algoritmo buscar_numero
	 //definimos las variables que vamos  a necesitar como enteros
	definir i, num, contador, almacen Como Entero;
	//a la variable almacen le daremos la dimension de 20 numeros
	dimension almacen[20];
	 //inicalizamos la variable contador en 0
	contador<-0;
	//creamos el ciclo para en el cual se ingresar�n los 20 numeros
	para i<-0 hasta 20-1 Con Paso 1 Hacer
		escribir "Ingresa el numero";
		leer almacen[i];
		
	FinPara
	//se solicita que se ingrese el numero que quiere buscar
	escribir "Ingresa el numero que quieres buscar";
	leer num;
	//creamos otro ciclo para el cual buscar� si el numero que se 
	//ingres� est� y qen que posici�n
	para i<-0 hasta 20-1 Con Paso 1 Hacer
		si num=almacen[i] Entonces
			escribir " El numero ", num, " esta en la posicion numero ", i;
			contador<-1;
			
		FinSi
	FinPara
	//creamos una condicion la cual pondr� no si el numero no se encuentra
	si contador=0 Entonces
		Escribir "NO";
	FinSi
	
	
	
	
FinAlgoritmo
