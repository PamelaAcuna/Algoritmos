Algoritmo ONG
	
	
	definir puntosReparto, vacunas, num, reparto_1, reparto_2, reparto_3, reparto_4, reparto_5 como Entero;
	
	
	vacunas<-0;
	reparto_1<-0;
	reparto_2<-0;
	reparto_3<-0;
	reparto_4<-0;
	reparto_5<-0;
	
	
	
	Repetir
		Escribir "1.Punto de reparto 1";
		Escribir "2.Punto de reparto 2";
		Escribir "3.Punto de reparto 3";
		Escribir "4.Punto de reparto 4";
		Escribir "5.Punto de reparto 5";
		leer puntosReparto;
		
		
		Segun puntosReparto Hacer
			1:
				escribir "¿Cuantas vacunas se daran?";
				leer num;
				reparto_1<-reparto_1+num;
				si num>800  Entonces
					Escribir "No hay suficientes vacunas";
					
				FinSi
				
				
			2:
				escribir "¿Cuantas vacunas se daran?";
				leer num;
				reparto_2<-reparto_2+num;
				si num>800  Entonces
					Escribir "No hay suficientes vacunas";
					
				FinSi
				
				
				
			3:
				escribir "¿Cuantas vacunas se daran?";
				leer num;
				reparto_3<-reparto_3+num;
				si num>800 Entonces
					Escribir "No hay suficientes vacunas";
					
				FinSi
				
				
				
			4:
				escribir "¿Cuantas vacunas se daran?";
				leer num;
				reparto_4<-reparto_4+num;
				si num>800 Entonces
					
					Escribir "No hay suficientes vacunas";
					
				FinSi
				
				
				
				
			5:
				escribir "¿Cuantas vacunas se daran?";
				leer num;
				reparto_5<-reparto_5+num;
				
				si num>800 Entonces
					Escribir "No hay suficientes vacunas";
					
				FinSi
				
				
				
				
				
		FinSegun
		
		vacunas<-vacunas+num;
		
		
		
		
		
		Escribir "Este es el total de vacunas entregadas hasta este momento", vacunas;
		
		
		
		
	Hasta Que vacunas=1000
	
	Escribir "El numero de vacunas dadas en el punto de Reparto 1 son:", reparto_1;
	Escribir "El numero de vacunas dadas en el punto de Reparto 2 son:", reparto_2;
	Escribir "El numero de vacunas dadas en el punto de Reparto 3 son:", reparto_3;
	Escribir "El numero de vacunas dadas en el punto de Reparto 4 son:", reparto_4;
	Escribir "El numero de vacunas dadas en el punto de Reparto 5 son:", reparto_5;
	
	
	
	
	
	
	
	
	
FinAlgoritmo