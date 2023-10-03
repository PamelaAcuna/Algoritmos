Algoritmo tienda
	
	shnegrosD=150
	playeracorrer=300
	tblancos=1600
	trojos=1700
	brarosa=250
	braazul=180
	shazules=250
	playerablanc=400
	TblancosC=2100
	zapvestir=2000
	boxer=100
	Rnegra=175
	
	EshnegrosD=100
	Eplayeracorrer=100
	Etblancos=100
	Etrojos=100
	Ebrarosa=100
	Ebraazul=100
	Eshazules=100
	Eplayerablanc=100
	ETblancosC=100
	Ezapvestir=100
	Eboxer=100
	ERnegra=100
	
	mujer<-0
	hom<-0
	cont<-0;
	//iniciamos el ciclo para repetir el programa n veces 
	Repetir
		//menu de inicio de la tienda
		Escribir "---------------Menú---------------";
		Escribir "Ingrese su nombre";
		Leer cliente;
		Escribir "1. Femenino";
		Escribir "2. Masculino";
		Escribir "3. Consultas";
		Escribir "0. Salir";
		Leer accion;
		//Ciclo para poder regresar al menu de linea de ropa
		Repetir
			segun accion Hacer
				0://Opcion salir de programa 
					accion=0;
				1://Servicios
					Escribir "-------------Tipo de producto-------------";
					Escribir "¿Qué desea comprar?";
					Escribir "1. Ropa deportiva para dama   ", deportivaD;
					Escribir "2. Zapatos para dama          ", zapatosD;
					Escribir "3. Ropa interior para dama    ", interiorD;
					Escribir "0. Regresar";
					Leer ropaD;
					Segun ropaD Hacer
						0:
							ropaD=0
						1:
							Escribir "---------Ropa deportiva para dama---------";
							Escribir "1.Shorts negros";
							Escribir "2.Playera para correr";
							leer eleccionropa
							segun eleccionropa Hacer
								1:
									escribir "El monto a pagar es: $", shnegrosD
									EshnegrosD<-Eshnegros-1
									total=total+shnegros
									
								2:
									escribir "El monto a pagar es: $", playeracorrer
									Eplayeracorrer<-Eplayeracorrer-1
									total=total+playeracorrer
									
							FinSegun
						2 :
							Escribir "---------Zapatos para dama---------";
							Escribir "1.Tennis blancos";
							Escribir "2.Tacones rojos";
							leer eleccionzapato
							segun eleccionzapato Hacer
								1:
									
									escribir "El monto a pagar es: $", tblancos
									Etblancos<-Etblancos-1
									total=total+tblancos
									
								2:
									
									escribir "El monto a pagar es: $", trojos
									Etrojos<-Etrojos-1
									total=total+trojos
									
							FinSegun
						3 :
							Escribir "---------Ropa interior para dama---------";
							Escribir "1.Brasier rosa";
							Escribir "2.Brasier azul";
							leer eleccionint
							segun eleccionint Hacer
								1:
									escribir "El monto a pagar es: $", brarosa
									Ebrarosa<-Ebrarosa-1
									total=total+brarosa
								2:
									escribir "El monto a pagar es: $", braazul
									Ebraazul<-Ebraazul-1
									total=total+braazul
									
							FinSegun
					FinSegun
					mujer<-mujer+1
				2 :
					Escribir "-------------Tipo de producto-------------";
					Escribir "¿Qué desea comprar?";
					Escribir "1. Ropa deportiva para caballero   $", deportivaH;
					Escribir "2. Zapatos para caballero        $", zapatosH;
					Escribir "3. Ropa interior para caballero    $", interiorH;
					Escribir "0. Regresar";
					Leer ropaC;
					Segun ropaC hacer
						0:
							ropaC=0
						1:
							Escribir "---------Ropa deportiva para caballero---------";
							Escribir "Shorts azules";
							Escribir "Playera blanca para correr ";
							leer eleccionropaC
							segun eleccionropaC Hacer
								1:
									escribir "El monto a pagar es: $", shazules
									Eshazules<-Eshazules-1
									total=total+shazules
									
								2:
									escribir "El monto a pagar es: $", playerablanc
									Eplayerablanc<-Eplayerablanc-1
									total=total+playerablanc
									
							FinSegun
						2 :
							Escribir "---------Zapatos para cabaellero---------";
							Escribir "1.Tennis blancos";
							Escribir "2.Zapatos de vestir negros";
							leer eleccionzapC
							segun eleccionzapC Hacer
								1:
									escribir "El monto a pagar es: $", TblancosC
									ETblancosC<-ETblancosC-1
									total=total+Tblancos
								2:
									
									Escribir "El monto a pagar es: $ " , zapvestir
									Ezapvestir<-Ezapvestir-1
									total=total+zapvestir
							FinSegun
						3 :
							Escribir "---------Ropa interior para caballero---------";
							Escribir "1.Boxer gris";
							Escribir "2.Playera de resaque blanca";
							leer intcaballero
							
							Segun intcaballero Hacer
								1:
									escribir "El monto a pagar es: $", boxer
									Eboxer<-Eboxer-1
									total=total+boxer
								caso 2:
									Escribir "El monto a pagar es: $", Rnegra
									ERnegra<-ERnegra-1
									total=total+Rnegra
									
							FinSegun
					FinSegun
					hom<-hom+1
				3:
					Repetir 
						Escribir "-------------Consultas-------------";
						Escribir "¿Qué desea consultar?"
						escribir "1.Cantidad de productos por línea"
						Escribir "2.¿Cuántos clientes hay en general?"
						escribir "3.Total recaudado por sexo"
						escribir "4.Total recaudado en general"
						escribir "0.Regresar"
						leer cons
						Segun cons Hacer
							1:
								escribir "-------------Cantidad restante de productos-------------"
								escribir "La cantidad restante de shorts negros para dama es:", EshnegrosD
								escribir "La cantidad restante de playeras para correr para dama es:", Eplayeracorrer
								escribir "La cantidad restante de tenis blancos para dama es:", Etblancos
								escribir "La cantidad restante de tacones rojos para dama es:", Etrojos
								escribir "La cantidad restante de brasieres rosa para dama es:", Ebrarosa
								escribir "La cantidad restante de brasieres azules para dama es:", Ebraazul
								escribir "La cantidad restante de shorts azules para caballero es:", Eshazules
								escribir "La cantidad restante de playeras blancas para caballero es:", Eplayerablanc
								escribir "La cantidad restante de tenis blancos para caballero es:", ETblancosC
								escribir "La cantidad restante de zapatos de vestir para caballero es:", Ezapvestir
								escribir "La cantidad restante de boxer gris para caballero es:" Eboxer
								escribir "La cantidad restante de playera de resaque negra para caballero es:", ERnegra
								escribir "0. Regresar"
								leer cons
							2:
								escribir "-------------Clientes-------------"
								escribir "La cantidad de clientes que hay es:", cont
								escribir "0. Regresar"
								leer cons
							3:
								escribir "-------------Clientes por genero------------"
								Escribir "El total recaudado en el departamento de caballero es:"
								Escribir "El total recaudado en el departamento de damas es:"
								escribir "El total recaudado en el area de ropa deportiva para caballero es:"
								escribir "0. Regresar"
								leer cons
							4:
								escribir "-------------Total de ganancias-------------"
								escribir "El total recaudado es:",total
								escribir "0. Regresar"
								leer cons
						Fin Segun
					Hasta Que cons=0
			FinSegun
		Hasta Que ropaD=0
		cont<-cont+1
		
	Hasta Que accion=0
	
	
FinAlgoritmo
