Algoritmo Gimnasio
	//iniciamos el ciclo para repetir el programa n veces 
	spinning=300
	pilates=300
	atletismo=300
	Repetir
	//menu de inicio del gym
	Escribir "---------------Menú---------------"
	Escribir "¿Qué quieres hacer?"
	Escribir "1. Servicios"
	Escribir "2. Socios"
	Escribir "3. Consultas"
	Escribir "0. Salir"
	Leer accion

	//Ciclo para poder regresar al menu principal
	Repetir
	//ejecutar tal cosa segun el servicio elegido
		Segun accion Hacer
		caso 0://Opcion salir de programa
			accion=0
		caso 1://Servicios
			//Menu para entrar a una clase
			Escribir "-------------Servicios-------------"
			Escribir "¿Qué clase quieres ingresar?"
			Escribir "1. Spinning       $",spinning
			Escribir "2. Pilates        $",pilates
			Escribir "3. Atletismo      $",atletismo
			Escribir "0. Regresar"
			Leer serv
			Segun serv Hacer
				caso 0://regresar
					serv=0
				caso 1://formulario de registro de spinning
					Escribir "---------Registro Spinning---------"
					//Se pide el mes del servicio para la ganancia de los ultimos meses
					
					Repetir
						
						
						Escribir "Elige el mes que realizas tu registro"
						Escribir "1. Enero"
						Escribir "2. Febrero"
						Escribir "3. Marzo"
						Escribir "4. Abril"
						Escribir "5. Mayo"
						Escribir "6. Junio"
						Escribir "7. Julio"
						Escribir "8. Agosto"
						Escribir "9. Septiembre"
						Escribir "10. Octubre"
						Escribir "11. Noviembre"
						Escribir "12. Diciembre"
						Leer mes
						Si mes == 1 o mes == 2 o mes == 3 o mes == 4 o mes == 5 o mes == 6 o mes == 7 o mes == 8 o mes == 9 o mes == 10 o mes == 11 o mes == 12 entonces
							mes=mes
						SiNo
							Escribir "Ingresa una opcion valida"
						FinSi
					Hasta Que mes == 1 o mes == 2 o mes == 3 o mes == 4 o mes == 5 o mes == 6 o mes == 7 o mes == 8 o mes == 9 o mes == 10 o mes == 11 o mes == 12
				
					Escribir "Ingresa tu nombre"
					Leer nombre
					Repetir
						Escribir "-----------------"
						Escribir "Elige tu sexo"
						Escribir "1. Hombre"
						Escribir "2. Mujer"
						Leer sexo
						Si sexo=1 o sexo=2 Entonces
							sexo=sexo
						SiNo
							Escribir "Ingresa una opcion valida del menú"
						FinSi
					Hasta Que sexo=1 o sexo=2
					Escribir "-----------------"
					Escribir "Edad"
					Leer edad
					
					//Contadores para contar los socios por edad y por sexo aparte
					Si edad>=18 y edad<=29 Entonces
						socio1829=socio1829+1
					FinSi
					Si edad>=30 y edad<=49 Entonces
						socio3049=socio3049+1
					FinSi
					Si edad>=50 y edad<=69 Entonces
						socio5069=socio5069+1
					FinSi
					Si edad>69 Entonces
						socio69m=socio69m+1
					FinSi
					Si sexo=2 Entonces
						sociomujer=sociomujer+1
					FinSi
					Si sexo=1 Entonces
						sociohombre=sociohombre+1
					FinSi
					
					numspi=numspi+1
					Escribir "El costo de la mensualidad será: $",spinning
					Si mes=6 o mes=7 o mes=8 Entonces
						rspi=rspi+spinning
					FinSi
					
					totalrecaudado=totalrecaudado+spinning
				caso 2:	//formulario de registro de pilates
					Escribir "---------Registro Pilates---------"
					//Se pide el mes del servicio para la ganancia de los ultimos meses
					Repetir
						
					
					Escribir "Elige el mes que realizas tu registro"
					Escribir "1. Enero"
					Escribir "2. Febrero"
					Escribir "3. Marzo"
					Escribir "4. Abril"
					Escribir "5. Mayo"
					Escribir "6. Junio"
					Escribir "7. Julio"
					Escribir "8. Agosto"
					Escribir "9. Septiembre"
					Escribir "10. Octubre"
					Escribir "11. Noviembre"
					Escribir "12. Diciembre"
					Leer mes
					Si mes == 1 o mes == 2 o mes == 3 o mes == 4 o mes == 5 o mes == 6 o mes == 7 o mes == 8 o mes == 9 o mes == 10 o mes == 11 o mes == 12 entonces
						mes=mes
					SiNo
						Escribir "Ingresa una opcion valida"
					FinSi
				    Hasta Que mes == 1 o mes == 2 o mes == 3 o mes == 4 o mes == 5 o mes == 6 o mes == 7 o mes == 8 o mes == 9 o mes == 10 o mes == 11 o mes == 12
					Escribir "Ingresa tu nombre"
					Leer nombre
					Repetir
						Escribir "-----------------"
						Escribir "Elige tu sexo"
						Escribir "1. Hombre"
						Escribir "2. Mujer"
						Leer sexo
						Si sexo=1 o sexo=2 Entonces
							sexo=sexo
						SiNo
							Escribir "Ingresa una opcion valida del menú"
						FinSi
					Hasta Que sexo=1 o sexo=2
					Escribir "-----------------"
					Escribir "Edad"
					Leer edad
					//Contadores para contar los socios por edad y por sexo aparte
					Si edad>=18 y edad<=29 Entonces
						socio1829pil=socio1829pil+1
					FinSi
					Si edad>=30 y edad<=49 Entonces
						socio3049pil=socio3049pil+1
					FinSi
					Si edad>=50 y edad<=69 Entonces
						socio5069pil=socio5069pil+1
					FinSi
					Si edad>69 Entonces
						socio69mpil=socio69mpil+1
					FinSi
					Si sexo=2 Entonces
						sociomujerpil=sociomujerpil+1
					FinSi
					Si sexo=1 Entonces
						sociohombrepil=sociohombrepil+1
					FinSi
					numpil=numpil+1
					
					Escribir "El costo de la mensualidad será: $", pilates
					Si mes=6 o mes=7 o mes=8 Entonces
						rpil=rpil+pilates
					FinSi
					
					totalrecaudado=totalrecaudado+pilates
				caso 3://formulario de registro de atletismo
					Escribir "---------Registro Atletismo---------"
					//Se pide el mes del servicio para la ganancia de los ultimos meses
					Repetir
						
						
						Escribir "Elige el mes que realizas tu registro"
						Escribir "1. Enero"
						Escribir "2. Febrero"
						Escribir "3. Marzo"
						Escribir "4. Abril"
						Escribir "5. Mayo"
						Escribir "6. Junio"
						Escribir "7. Julio"
						Escribir "8. Agosto"
						Escribir "9. Septiembre"
						Escribir "10. Octubre"
						Escribir "11. Noviembre"
						Escribir "12. Diciembre"
						Leer mes
						Si mes == 1 o mes == 2 o mes == 3 o mes == 4 o mes == 5 o mes == 6 o mes == 7 o mes == 8 o mes == 9 o mes == 10 o mes == 11 o mes == 12 entonces
							mes=mes
						SiNo
							Escribir "Ingresa una opcion valida"
						FinSi
					Hasta Que mes == 1 o mes == 2 o mes == 3 o mes == 4 o mes == 5 o mes == 6 o mes == 7 o mes == 8 o mes == 9 o mes == 10 o mes == 11 o mes == 12
					Escribir "Ingresa tu nombre"
					Leer nombre
					Repetir
						Escribir "-----------------"
						Escribir "Elige tu sexo"
						Escribir "1. Hombre"
						Escribir "2. Mujer"
						Leer sexo
						Si sexo=1 o sexo=2 Entonces
							sexo=sexo
						SiNo
							Escribir "Ingresa una opcion valida del menú"
						FinSi
					Hasta Que sexo=1 o sexo=2
					Escribir "-----------------"
					Escribir "Edad"
					Leer edad
					//Contadores para contar los socios por edad y por sexo aparte
					Si edad>=18 y edad<=29 Entonces
						socio1829a=socio1829a+1
					FinSi
					Si edad>=30 y edad<=49 Entonces
						socio3049a=socio3049a+1
					FinSi
					Si edad>=50 y edad<=69 Entonces
						socio5069a=socio5069a+1
					FinSi
					Si edad>69 Entonces
						socio69ma=socio69ma+1
					FinSi
					Si sexo=2 Entonces
						sociomujera=sociomujera+1
					FinSi
					Si sexo=1 Entonces
						sociohombrea=sociohombrea+1
					FinSi
					numatle=numatle+1
					Escribir "El costo de la mensualidad será: $",atletismo
					Si mes=6 o mes=7 o mes=8 Entonces
						rat=rat+atletismo
					FinSi
					
					totalrecaudado=totalrecaudado+atletismo
			FinSegun
		caso 2://Socios
			
			Escribir "---------Información---------"
			Escribir "1. Socios por sexo"
			Escribir "2. Socios por edad"
			Escribir "0. Menu"
			Leer aborigen
			Escribir "---------Clase---------"
			Escribir "1. Spinning"
			Escribir "2. Pilates"
			Escribir "3. Atletismo"
			Escribir "0. Menu"
			Leer clase
			Segun aborigen Hacer
				caso 0://regresar
					aborigen=0
				caso 1://socios ordenados por sexo
					Segun clase Hacer
						caso 0:
							aborigen=0
						caso 1:	
							Escribir "----------------------Spinning----------------------"
							Escribir "La cantidad de socios hombres en spinning es: ",sociohombre
							Escribir "La cantidad de socios mujeres en spinning es: ",sociomujer
							Escribir "0. Menu"
							Leer aborigen
						caso 2:
							Escribir "----------------------Pilates----------------------"
							Escribir "La cantidad de socios hombres en pilates es: ",sociohombrepil
							Escribir "La cantidad de socios mujeres en pilates es: ",sociomujerpil
							Escribir "0. Menu"
							Leer aborigen
						caso 3:
							Escribir "----------------------Atletismo----------------------"
							Escribir "La cantidad de socios hombres en pilates es: ",sociohombrepil
							Escribir "La cantidad de socios mujeres en pilates es: ",sociomujerpil
							Escribir "0. Menu"
							Leer aborigen
					FinSegun
					
				caso 2://socios ordenados por edad
					Segun clase Hacer
						caso 0:
							aborigen=0
						caso 1:	
							Escribir "----------------------Spinning----------------------"
							Escribir "La cantidad de socios entre 18 y 29 años es: ",socio1829
							Escribir "La cantidad de socios entre 30 y 49 años es: ",socio3049
							Escribir "La cantidad de socios entre 50 y 69 años es: ",socio5069
							Escribir "La cantidad de socios mayores a 69 años es: ",socio69m
							Escribir "0. Menu"
							Leer aborigen
						caso 2:
							Escribir "----------------------Pilates----------------------"
							Escribir "La cantidad de socios entre 18 y 29 años es: ",socio1829pil
							Escribir "La cantidad de socios entre 30 y 49 años es: ",socio3049pil
							Escribir "La cantidad de socios entre 50 y 69 años es: ",socio5069pil
							Escribir "La cantidad de socios mayores a 69 años es: ",socio69mpil
							Escribir "0. Menu"
							Leer aborigen
						caso 3:
							Escribir "----------------------Atletismo----------------------"
							Escribir "La cantidad de socios entre 18 y 29 años es: ",socio1829a
							Escribir "La cantidad de socios entre 30 y 49 años es: ",socio3049a
							Escribir "La cantidad de socios entre 50 y 69 años es: ",socio5069a
							Escribir "La cantidad de socios mayores a 69 años es: ",socio69ma
							Escribir "0. Menu"
							Leer aborigen
					FinSegun
					
				De Otro Modo://Si ingresa cualquier opcion que no sea 1 o 2 
					Escribir "Ingresa una opción valida del menú"	
						FinSegun
		caso 3://Consultas	
			Repetir
			Escribir "---------Información---------"
			Escribir "1. Control de clases"
			Escribir "2. Horarios"
			Escribir "3. Recaudación"
			Escribir "0. Regresar"
			Leer info
			
			Segun info Hacer
					caso 0:
						serv=0
					caso 1://opcion alumnos por clase
						Escribir "El total de alumnos en Spinning es: ",numspi
						Escribir "El total de alumnos en Pilates es: ",numpil
						Escribir "El total de alumnos en Atletismo es: ",numatle
						Escribir "0. Menu"
						Leer aborigen
					caso 2://opcion horarios
						Escribir "El horario de atencion de Spinning es 8am-7pm"
						Escribir "El horario de atencion de Pilates es 10am-9pm"
						Escribir "El horario de atencion de Atletismo es 5am-10pm"
						Escribir "0. Regresar"
						Leer aborigen
					
					caso 3:
						Escribir "El total recaudado es: $",totalrecaudado
						Escribir "Recaudado en Julio, Agosto y Septiembre:"
						Escribir "Spinning: $",rspi
						Escribir "Pilates: $",rpil
						Escribir "Atletismo: $",rat
						Escribir "0. Menu"
						Leer aborigen
					De Otro Modo://Si ingresa cualquier opcion que no sea 1, 2 o 3
						Escribir "Ingresa una opción valida del menú"	
				FinSegun
			Hasta Que aborigen=0
			
			
		De Otro Modo://Si ingresa cualquier opcion que no sea 1, 2 o 3
			Escribir "Ingresa una opción valida del menú"
	FinSegun
	Hasta Que serv=0

Hasta Que accion=0
FinAlgoritmo
