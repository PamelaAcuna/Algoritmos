Algoritmo receta
	//definimos las variables que vamos a utilzar como enteros
	Definir cant, i, suma Como Entero;
	Definir ingredientes Como Entero;
	
	//inicalizamos la variable suma en 0 la cual nos irá sumando y guardando el precio de cada producto
	suma <- 0;
	
	//pedimos que ingrese la cantidad de productos que necesita para la receta
	Escribir "Ingrese la cantidad de productos para la receta";
	leer cant;
	
	//damos la dimension a la variable la cual será la que nosotros ingresemos al inicio
	Dimension ingredientes[cant];
	
	//creamos el ciclo para
	para i <- 0 Hasta cant-1 Con Paso 1 Hacer
		escribir "Ingrese el precio del producto";
		leer ingredientes[i];
		suma<-suma+ingredientes[i];
	FinPara
	
	//imprimimos el monto total el cual lo dará la variable suma
	Escribir "El monto total es: $", suma;
	
FinAlgoritmo
