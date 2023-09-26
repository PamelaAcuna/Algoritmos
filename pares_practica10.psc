Algoritmo pares
	
	//definimos las variables que vamos a utilizar
	
		definir n, num, num_pares, num_impares, sumaMulti, contMulti, i Como Entero;
		Definir promedioMulti Como Real;
		
		//inicializamos las variables que vamos a necesitar
		num_Pares <- 1;
		num_impares <- 0;
		sumaMulti<- 0;
		contMulti<- 0;
		promedioMulti<-0;
		
		//pedimos que se ingresen los numeros que vamos a evaluar con las 
		//condiciones que tenemos
		Escribir "Ingrese la cantidad de números a procesar: ";
		Leer n;
		
		Para i <- 1 Hasta n Hacer
			Escribir "Ingrese el número ", i, ": ";
			Leer num;
			
			Si num< 25 y num Mod 2 = 0 Entonces
				num_Pares <- num_Pares * num;
			FinSi
			
			Si num > 16 y num Mod 2 <> 0 Entonces
				num_impares <- num_impares + num;
			FinSi
			
			
			Si num Mod 4 = 0 Entonces
				sumaMulti <- sumaMulti + num;
				contMulti <- contMulti + 1;
			FinSi
		FinPara
		
		
		Si contMulti> 0 Entonces
			promedioMulti<- sumaMulti / contMulti;
		FinSi
		
		//imprimomos los resultados que pide al final
		Escribir "El producto de los números pares menores a 25 es: ", num_Pares ;
		Escribir "La suma de los números impares mayores a 16 es: ", num_impares;
		
		Escribir "El promedio de los números múltiplos de 4 es: ", promedioMulti;
		

FinAlgoritmo
