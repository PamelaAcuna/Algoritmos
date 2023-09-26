Algoritmo mayoraCERO
	
	
		//definimos las variables
		definir num, num_mayores, num_menores, cantidad Como Entero;
		
		//inicializamos las variables
		num_mayores<-0;
		cantidad<-0;
		num<-0;
		
		//hacemos el ciclo repetir en el cual pediremos que se ingrese el numero
		//y haremos la condicion de que si es mayor a 0 se vaya acumulando
	
		Repetir 
			Escribir "Ingrese el numero";
			leer num;
			
			si num>0 Entonces
				
				num_mayores<-num_mayores+1;
			
			FinSi
			
			
			cantidad<-cantidad+1;

        Hasta Que cantidad=10
		
		
		//al final imprimimos la cantidad de numeros que son mayores a 0
		Escribir "Los numeros mayores a 0 son:", num_mayores;

	
	
	
FinAlgoritmo
	