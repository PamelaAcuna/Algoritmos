Algoritmo tarea_4
		Definir  valores, num, cant, i, mult, cont Como Entero;
		cont<-0;
		
		Escribir "ingrese la cantidad de numeros ";
		leer cant;
		Dimension valores[cant];
		para i<-0 hasta cant-1 con paso 1 hacer 
			Escribir "ingresa los numeros";
			leer valores[i];
			
			
		FinPara
		Escribir "los numeros multiplos de 6 son:";
		
		para i<-0 hasta cant-1 con paso 1 hacer 
			si valores[i] mod 6 = 0 Entonces
				cont<-cont+1;
				Escribir valores[i];
				Escribir "es el, ", cont, ", numero";
				
			finsi 
		FinPara
	
	
	
	
	
	
	
FinAlgoritmo
	