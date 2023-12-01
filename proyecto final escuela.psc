Algoritmo escuela
	
	definir cont, pagos, accion, i, eleccion Como Entero;
	definir registros, carreras Como Caracter;
	Dimension registros[100,2], carreras[100,3];
	
	cont<-0;
	pagos<-0;
	eleccion<-0;
	registros[0,0] <- " ";
	
	///menú de inicio al programa para poderte registrar
	escribir "Bienvenido a la universidad";
	repetir 
		escribir "********** Menú **********";
		escribir "¿Que desea realizar?";
		escribir "1. Realizar pago";
		Escribir "2. Registrar alumno";
		Escribir "3. Profesores";
		escribir "4. Carreras";
		Escribir "5. Grupos";
		escribir "6. Becas";
		escribir "7. Salir";
		leer accion;
		///condición para que solo te deje entrar a la opción de realizar un pago
		Segun accion Hacer
			1: si registros[0,0]=" " Entonces
					
				escribir "******PAGOS******";
				escribir " ";
				Escribir "Ingrese cuantos pagos va a realizar";
				leer cont;
				Para i<-0 hasta cont-1 hacer
					Escribir "";
					Escribir "CARRERAS Y PRECIOS";
					escribir "ITI- $2000";
					Escribir "Derecho- $3000";
					Escribir "Medico cirujano- $5400";
					Escribir "Mecatronica- $2000";
					Escribir "";
					Escribir "Ingrese el nombre de la carrera elegida";
					leer registros[i,0];
						Si registros[i,0] == 'ITI' O registros[i,0] == 'iti' Entonces
							registros[i,1] <- '2000';
						FinSi
						Si registros[i,0] == 'Derecho' O registros[i,0] == 'derecho' Entonces
							registros[i,1] <- '3000';
						FinSi
						Si registros[i,0] == 'Medico cirujano' O registros[i,0] == 'medico cirujano' Entonces
							registros[i,1] <- '5400';
						FinSi
						Si registros[i,0] == 'Mecatronica' O registros[i,0] == 'mecatronica' Entonces
							registros[i,1] <- '2000';
						FinSi
				
					FinPara
				SiNo
					
					Escribir "";
					Escribir "Aún no se realiza un pago. Necesita hacer un pago para continuar";
					Escribir "";
				FinSi
				
					
				
			2: escribir "******ALUMNOS******";
				Escribir "";
				Para i<-0 hasta cont-1 hacer
					Escribir "Ingrese el nombre del alumno";
					Leer carreras[i,0];
					escribir "GRUPOS DISPONIBLES POR CARRERA. ELIGE UNO";
					escribir "ITI";
					Escribir "GRUPO 1A | GRUPO 2A";
					escribir "";
					Escribir "DERECHO";
					Escribir "GRUPO 2A | 2B";
					escribir "";
					Escribir "MEDICO CIRUJANO";
					Escribir "GRUPO 3A | GRUPO 3A";
					Escribir "";
					Escribir "MECATRONICA";
					Escribir "GRUPO 4A | GRUPO 4A";
					Escribir "";
					Escribir "Ingrese el grupo que desee";
					leer carreras[i,1];		
					Si carreras[i,1] <> 'GRUPO 1A' O carreras[i,1] <> 'GRUPO 2A' O carreras[i,1] <> 'GRUPO 3A' O carreras[i,1] <> 'GRUPO 4A' O carreras[i,1] <> 'GRUPO 1B' O carreras[i,1] <> 'GRUPO 2B' O carreras[i,1] <> 'GRUPO 3B' O carreras[i,1] <> 'GRUPO 4B' Entonces
						Escribir "Ingrese un salón disponible";
					FinSi
				FinPara
				
			3: escribir "******PROFESORES******";
				
			4:
				
			5:
				
			6:
		Fin Segun
	Hasta Que accion= 7
	escribir "Nos vemos pronto";
	
	
	
	
	
FinAlgoritmo
