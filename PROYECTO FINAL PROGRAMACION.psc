Algoritmo escuela_proyectofinal
	
	///defini las variable, contadores y auxiliares que voy a necesitar
	Definir elija, elegir, v, c, cont_profs Como entero;
	definir temporal, letra, temporal1 Como Caracter;
	definir cont_alejandro, cont_almazan, cont_amparo, cont_claudia, cont_julio, cont_mario, cont_samuel, cont_victor Como Entero;
	Definir iti_grupos, drcho_grupos, meca_grupos, med_grupos Como Caracter;
	definir cont, pagos, accion, i, eleccion, que_beca Como Entero;
	definir registros, carreras, profesores  Como Caracter;
	Definir profe_azar, grupo_azar, aux, aux_profesores como entero;
	Definir marioporfavorapiadatedelalmadepamela como entero;
	Definir promedios, id como real;
	definir accion_consultas Como Entero;
	Definir iti_profs, drcho_profs, med_profs, mec_profs como caracter;
	///doy la dimension de las matrices y de los vectores que voy a necesitar
	Dimension registros[100,5], profesores[100,3], iti_profs[2], drcho_profs[2], med_profs[2], mec_profs[2], iti_grupos[2], drcho_grupos[2], med_grupos[2], meca_grupos[2], id[100];
	///asigno valores a las posiciones en los vectores de los profesores
	iti_profs[0] <- "DOC. ALMAZAN";
	iti_profs[1] <- "DOC. MARIO";
	drcho_profs[0] <-"LIC. JULIO";
	drcho_profs[1] <- "M. CLAUDIA";
	med_profs[0] <- "DOC. AMPARO";
	med_profs[1] <- "DOC. ALEJANDRO";
	mec_profs[0] <- "ING. SAMUEL";
	mec_profs[1] <- "ING. VICTOR";
	///asigno valores a las posiciones en los vectores de los grupos de cada carrera
	iti_grupos[0] <- "GRUPO 201";
	iti_grupos[1] <- "GRUPO 205";
	drcho_grupos[0] <- "GRUPO 104";
	drcho_grupos[1] <- "GRUPO 118";
	med_grupos[0] <-  "GRUPO 200";
	med_grupos[1] <- "GRUPO 201";
	meca_grupos[0] <- "GRUPO 122";
	meca_grupos[1] <- "GRUPO 116";
	///inicializo cada contador en 0
	aux<-0;
	aux_profesores<-0;
	cont_almazan<-0;
	cont_mario<-0;
	cont_claudia<-0;
	cont_julio<-0;
	cont_alejandro<-0;
	cont_amparo<-0;
	cont_samuel<-0;
	cont_victor<-0;
	cont_profs<-0;
	marioporfavorapiadatedelalmadepamela <- 0;
	
///ciclo para que se quede en blanco si es que no he ingresado a algun profesor y deseo consultar la matriz
	Para i<-0 hasta 3 con paso 1 Hacer
		
		profesores[0,0]<-'';
		profesores[0,1]<-'';
		profesores[0,2]<-'';
		id[i]<-0;
		
	FinPara
	
	
	c<-0;
	
	cont<-0;
	elija<-0;
	pagos<-0;
	eleccion<-0;
	registros[0,0] <- " ";
	
	///para i<-aux hasta cantidad que recibo de datos+aux -1 Hacer
	///fin Para
	///aux<-aux+cantidad
	
	
	
	///menú de inicio al programa para poderte registrar
	escribir "Bienvenido a la universidad";
	repetir 
		escribir "********** Menú **********";
		escribir "¿Que desea realizar?";
		escribir "1. Registro de alumnos";
		Escribir "2. Registro de profesores";
		Escribir "3. Becas";
		Escribir "4. Consultas";
		escribir "5. Salir";
		leer temporal;
		Repetir
			v<-0;
			///ciclo para validar que solo ingrese numeros enteros y los que estan en el menú
			Para c<-0 Hasta Longitud(temporal)-1 hacer
				letra<-Subcadena(temporal,c,c);
				
				Si letra <= "/" o letra >= ":"  Entonces
					v<-v+1;
				FinSi
			FinPara
			Si v<>0 Entonces
				Escribir "Valor inválido";
				Escribir "Ingresa una opción del MENÚ";
				Leer temporal;
			FinSi
			
		Hasta Que v=0
		accion<-ConvertirANumero(temporal);
	
		///primera opcion del menu donde se registran los alumnos
		Segun accion Hacer
			1:	escribir "****** REGISTRO DE ALUMNOS******";
				escribir " ";
				Escribir "Ingrese cuantidad de alumnos que desea registrar";
				///contador para la cantidad de alumnos que se desean ingresar al sistema
				leer cont;
				Escribir "";
				para i<-aux Hasta aux+cont-1 Hacer
					escribir "Ingrese su nombre";
					Leer temporal;
					///Validar que solo ingrese letras
					Repetir
						v<-0;
						temporal1<-Minusculas(temporal);
						Para c<-0 Hasta Longitud(temporal)-1 Hacer
							letra<-Subcadena(temporal1,c,c);
							
							Si (letra >= "a" y letra <="z") o (letra>="á" y letra<="ú") o (letra = "ñ") o (letra=" ") Entonces
								v<-v;
							SiNo
								v<-v+1;
							FinSi
							
						FinPara
						Si v<>0 Entonces
							Escribir "Valor inválido";
							Escribir "Ingresa nuevamente:";
							Leer temporal;
						FinSi
					Hasta Que v=0
					registros[i,0]<-temporal;
					escribir "";
					///opcion donde se ingresa la carrera deseada y automaticamente se ingresa el precio de la carrera a un lugar de la matriz
					///pero si su promedio es apto para una beca se les hace el debido descuento
					Escribir "CARRERAS Y PRECIOS";
					escribir "ITI- $2000";
					Escribir "Derecho- $3000";
					Escribir "Medico cirujano- $5400";
					Escribir "Mecatronica- $2000";
					Escribir "";
				Repetir
					Escribir "Ingrese el nombre de la carrera que desea";
					leer registros[i,1];
					registros[i,1]  <- Mayusculas(registros[i,1]);
					si registros[i,1] <> "ITI" y registros[i,1] <> "DERECHO" y registros[i,1] <> "MEDICO CIRUJANO" y registros[i,1] <> "MECATRONICA" Entonces
						escribir "Valor inválido. INGRESE UNA CARRERA EXISTENTE";
					SiNo
						si registros[i,1] = "ITI" O registros[i,1] = "DERECHO" o registros[i,1] = "MEDICO CIRUJANO" O registros[i,1] = "MECATRONICA" entonces
							Escribir "Carrera existente";
						FinSi
						
					FinSi
				Hasta Que registros[i,1] = "ITI" O registros[i,1] = "DERECHO" o registros[i,1] = "MEDICO CIRUJANO" O registros[i,1] = "MECATRONICA"
				
					Escribir "Ingrese su promedio, EJEMPLO: 9.5, 10, 8.5...";
					Leer temporal;
					///Validar numeros decimales y enteros
					Repetir
						v<-0;
						Para c<-0 Hasta Longitud(temporal)-1 hacer
							letra<-Subcadena(temporal,i,i);
							
							Si letra <= "/" o letra >= ":"  Entonces
								v<-v+1;
							FinSi
							Si letra="." Entonces
								v<-v-1;
							FinSi
						FinPara
						Si v<>0 Entonces
							Escribir "Valor inválido";
							Escribir "Ingresa nuevamente:";
							Leer temporal;
						FinSi
						
					Hasta Que v=0
					registros[i,2]<-temporal;
					
					Si registros[i,1] == 'ITI' Entonces
						//donde se guarda el precio de la carrera 
						registros[i,3] <- '2000';
						si ConvertirANumero(registros[i,2])>=9.5 Entonces
							registros[i,3]<-'0';
							escribir "";
							escribir "Tiene beca del 100%";
						SiNo
							si ConvertirANumero(registros[i,2])>=9.0 o ConvertirANumero(registros[i,2])<=9.4 Entonces
								registros[i,3]<-ConvertirATexto(3000*.50);
								Escribir "Tiene beca del 50%";
							FinSi
						FinSi
						Escribir "GRUPO 201 | GRUPO 205";
						grupo_azar<-aleatorio(0,1);
						registros[i,4]<-iti_grupos[grupo_azar];
						escribir "";
						escribir "Su grupo será: ", registros[i,4];
					FinSi
					Si registros[i,1] == 'DERECHO' Entonces
						registros[i,3] <- '3000';
						si ConvertirANumero(registros[i,2])>=9.5 Entonces
							registros[i,3]<-'0';
							escribir "";
							escribir "Tiene beca del 100%";
						SiNo
							si ConvertirANumero(registros[i,2])>=9.0 y ConvertirANumero(registros[i,2])<=9.4 Entonces
								registros[i,3]<-ConvertirATexto(3000*.50);
								Escribir "Tiene beca del 50%";
							FinSi
						FinSi
						///se da al alumno un grupo aleatoriamente que estann ingresados en un vector y se guardan automaticamente en la matriz
						Escribir "GRUPO 104 | GRUPO 118";
						grupo_azar<-aleatorio(0,1);
						registros[i,4]<-drcho_grupos[grupo_azar];
						escribir "";
						escribir "	Su grupo será: ", registros[i,4];
					FinSi
					
					Si registros[i,1] == 'MEDICO CIRUJANO' Entonces
						registros[i,3] <- '5400';
						si ConvertirANumero(registros[i,2])>=9.5 Entonces
							registros[i,3]<-'0';
							escribir "";
							escribir "Tiene beca del 100%";
						SiNo
							si ConvertirANumero(registros[i,2])>=9.0 y ConvertirANumero(registros[i,2])<=9.4 Entonces
								registros[i,1]<-ConvertirATexto(3000*.50);
								Escribir "Tiene beca del 50%";
							FinSi
						FinSi
						Escribir "GRUPO 200 | GRUPO 201";
						grupo_azar<-aleatorio(0,1);
						registros[i,4]<-med_grupos[grupo_azar];
						escribir "";
						escribir "Su grupo será: ", registros[i,4];
					FinSi
					
					Si registros[i,1] == 'MECATRONICA' Entonces
						registros[i,3] <- '2000';
						si ConvertirANumero(registros[i,2])>=9.5 Entonces
							registros[i,3]<-'0';
							escribir "";
							escribir "Tiene beca del 100%";
						SiNo
							si ConvertirANumero(registros[i,2])>=9.0 y ConvertirANumero(registros[i,2])<=9.4 Entonces
								registros[i,3]<-ConvertirATexto(3000*.50);
								Escribir "Tiene beca del 50%";
							FinSi
						FinSi
						Escribir "GRUPO 122 | GRUPO 116";
						grupo_azar<-aleatorio(0,1);
						registros[i,4]<-meca_grupos[grupo_azar];
						escribir "";
						escribir "Su grupo será: ", registros[i,4];
					FinSi
				FinPara
				///valor asignado para que los valores ingresados en la matriz se sigan reflejando en la matriz despues de salir de la opcion de registros
				aux<-aux+cont;
				///condicion para que no te deje ingresar a otras opciones del menu si no hay registro de alumnos aún
				2:Si registros[0,0] <> ' ' Entonces
					escribir "****** REGISTRO DE PROFESORES ******";
					Escribir "";
					escribir "Ingrese cuantos profesores va a registrar";
					leer cont_profs;
					Para i<-aux_profesores hasta aux_profesores+cont_profs-1 hacer
						Escribir "Ingrese el nombre del ", i ," profesor";
						Leer temporal;
						///Validar que solo ingrese letras
						Repetir
							v<-0;
							temporal1<-Minusculas(temporal);
							Para c<-0 Hasta Longitud(temporal)-1 Hacer
								letra<-Subcadena(temporal1,c,c);
								
								Si (letra >= "a" y letra <="z") o (letra>="á" y letra<="ú") o (letra = "ñ") o (letra=" ") Entonces
									v<-v;
								SiNo
									v<-v+1;
								FinSi
								
							FinPara
							Si v<>0 Entonces
								Escribir "Valor inválido";
								Escribir "Ingresa nuevamente:";
								Leer temporal;
							FinSi
						Hasta Que v=0
						profesores[i,0]<-temporal;
						escribir "ID del profesor";
						id[i]<-Aleatorio(1,100);
						Escribir "Este es su ID: ",id[i];
						Escribir "";
						repetir
							escribir "Seleccione según la carrera que da";
							escribir "1. ITI";
							Escribir "2. DERECHO";
							Escribir "3. MEDICO CIRUJANO";
							Escribir "4. MECATRONICA";
							leer marioporfavorapiadatedelalmadepamela;
							///condicion para que segun la carrera que ingrese el profesor se haga todo lo que viene dentro de esta condicion
							si marioporfavorapiadatedelalmadepamela = 1 Entonces
								profesores[i,2] <- "ITI";
								Escribir "ITI";
								Escribir "GRUPO 201 | GRUPO 205";
								grupo_azar<-aleatorio(0,1);
								profesores[i,1]<-iti_grupos[grupo_azar];
								escribir "";
								escribir "El grupo que dará será: ", profesores[i,1];
//								
							sino
								si marioporfavorapiadatedelalmadepamela = 2 Entonces
									profesores[i,2] <- "DERECHO";
									Escribir "DERECHO";
									Escribir "GRUPO 104 | 118";
									grupo_azar<-aleatorio(0,1);
									profesores[i,1]<-drcho_grupos[grupo_azar];
									escribir "";
									escribir "El grupo que dará será: ", profesores[i,1];
								SiNo
									si marioporfavorapiadatedelalmadepamela = 3 Entonces
										profesores[i,2] <- "MEDICO CIRUJANO";
										Escribir "MEDICO CIRUJANO";
										Escribir "GRUPO 200 | GRUPO 201";
										grupo_azar<-aleatorio(0,1);
										profesores[i,1]<-med_grupos[grupo_azar];
										escribir "";
										escribir "El grupo que dará será: ", profesores[i,1];
									SiNo
										si marioporfavorapiadatedelalmadepamela = 4 Entonces
											profesores[i,2] <- "MECATRONICA";
											Escribir "MECATRONICA";
											Escribir "GRUPO 122 | GRUPO 116";
											grupo_azar<-aleatorio(0,1);
											profesores[i,1]<-meca_grupos[grupo_azar];
											escribir "";
											escribir "El grupo que dará será: ", profesores[i,1];
										SiNo
											Escribir "Valor inválido.";
											Escribir "Ingrese una carrera existente.";
										FinSi
									FinSi
								FinSi
							FinSi
							
							
						Hasta Que marioporfavorapiadatedelalmadepamela >= 1 y marioporfavorapiadatedelalmadepamela <=4 
						
//						Segun marioporfavorapiadatedelalmadepamela Hacer
//							1:
//								profesores[i,1] <- "ITI";
//								Escribir "ITI";
//								Escribir "GRUPO 201 | GRUPO 205";
//								grupo_azar<-aleatorio(0,1);
//								profesores[i,2]<-iti_grupos[grupo_azar];
//								escribir "";
//								escribir "El grupo que dará será: ", profesores[i,1];
//								
//							2:
//								profesores[i,1] <- "DERECHO";
//								Escribir "DERECHO";
//								Escribir "GRUPO 104 | 118";
//								grupo_azar<-aleatorio(0,1);
//								profesores[i,2]<-drcho_grupos[grupo_azar];
//								escribir "";
//								escribir "El grupo que dará será: ", profesores[i,1];
//								
//							3:
//								profesores[i,1] <- "MEDICO CIRUJANO";
//								Escribir "MEDICO CIRUJANO";
//								Escribir "GRUPO 200 | GRUPO 201";
//								grupo_azar<-aleatorio(0,1);
//								profesores[i,2]<-med_grupos[grupo_azar];
//								escribir "";
//								escribir "El grupo que dará será: ", profesores[i,1];
//							4:
//								profesores[i,1] <- "MECATRONICA";
//								Escribir "MECATRONICA";
//								Escribir "GRUPO 122 | GRUPO 116";
//								grupo_azar<-aleatorio(0,1);
//								profesores[i,2]<-meca_grupos[grupo_azar];
//								escribir "";
//								escribir "El grupo que dará será: ", profesores[i,1];
//								
//							De Otro Modo:
//								Escribir "Opcion Invalida";
//						FinSegun
					FinPara
					aux_profesores<-aux_profesores+cont_profs;
				SiNo
					Escribir "NO PUEDES ACCEDER A ESTE SITIO SIN NINGUN REGISTRO DE ALUMNOS";
				FinSi
				///parte del menú donde se explica que es cada beca y porque se dan
			3:Si registros[0,0] <> ' ' Entonces
				escribir "****** BECAS ******";
				Escribir "";
				escribir "¿Sobre que beca quieres saber?";
				escribir "1. Beca del 50%";
				Escribir "2. Beca del 100%";
				leer que_beca;
				Segun que_beca Hacer
					1:
						escribir "Este alumno ha sido seleccionado para recibir una beca del 50% debido a su destacado rendimiento académico. Tu pago será la mitad del pago normal";
					2:
						escribir "El alumno alumno cuente con esta beca ha sido seleccionado para recibir una beca del 100% debido a su destacado rendimiento académico. La universidad cubrirá tus gastos de inscripción";
					De Otro Modo:
						Escribir "Ingrese una opcíon válida";
				FinSegun
				
			SiNo
				Escribir "NO PUEDES ACCEDER A ESTE SITIO SIN NINGUN REGISTRO DE ALUMNOS";
			FinSi
				///parte del menu donde se imprimen las matrices y se reflejan todos los valores ingresados
			4:	Si registros[0,0] <> ' ' Entonces
					escribir "*** BIENVENIDO AL SUBMENÚ ***";
					Escribir "1. Consulta de alumnos";
					Escribir "2. Consulta de profesores";
					leer accion_consultas;
					Segun accion_consultas Hacer
						1:
							Escribir "--- CONSULTA DE ALUMNOS---";
							Escribir "";
							Escribir "+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+";
							escribir "+    NOMBRE   |   CARRERA   |   PROMEDIO   |   PRECIO   |   GRUPO   ";
							Escribir "+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.";
							para i<-0 Hasta aux-1 Hacer
								Escribir Sin Saltar, "       ", registros[i,0], "       ", registros[i,1], "       ", registros[i,2], "       ", registros[i,3], "        ", registros[i,4]; 
								Escribir "  ";
							FinPara
							
						2:
							Escribir "--- CONSULTA DE PROFESORES ---";
							Escribir "";
							Escribir "+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.";
							escribir "+    NOMBRE   |   ID   |   GRUPO   |   CARRERA  |";   
							Escribir "+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.";
							si profesores[0,0] <> "" Entonces
								para i<-0 Hasta aux_profesores-1 Hacer
									escribir Sin Saltar,"      ", profesores[i,0], "      ", id[i], "      ", profesores[i,1], "      ",profesores[i,2];
									escribir "";
								FinPara
							SiNo
								Escribir "No hay profesores aún.";
							FinSi
							escribir "";
							
							
					FinSegun
				SiNo
					Escribir "NO PUEDES ACCEDER A ESTE SITIO SIN NINGUN REGISTRO DE ALUMNOS";
				FinSi
		Fin Segun
	Hasta Que accion= 5
	escribir "Nos vemos pronto";
	
	
	
	
	
FinAlgoritmo

//Datos
//Información
////Componentes
//telecomunicaciones,equiposdecomputointernetsistemasoperativosactivoscomponentesinternosdeunacomputadora,componentesderedesdecompotaduras,clasificacionesdesoftware,(softwaredeaplicacionysoftwaredebase),insutria4.0,clasificaciondecomputadorasdeacuerdoasuarquitecturapropositdecomputadora,evoluciondecomputadoras,sistemasdeinformacion,