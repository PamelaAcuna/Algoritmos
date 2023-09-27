Algoritmo empresa
	
	//definimos las variables que vamos a necesitar
	definir B, A, C, AT, AR, area Como Real;
	 //pedimos que se ingresen los valores del terreno
	Escribir "Ingrese el valor de la altura";
	leer A;
	Escribir "Ingrese el valor de la base ";
	leer B;
	Escribir "Ingrese el valor de la altura del rectángulo";
	leer C;
	 //definimos las variables con las formulas para obtener el area total de la figura
	A<-A-C;
	AT<-(B*A)/2;
	AR<-B*C;
	//imprimimos el area total del terreno sumando las areas anteriores que obtuvimos
	Escribir "El area total del terreno es:", AT+AR;
	
	
	
	
	
	
FinAlgoritmo
