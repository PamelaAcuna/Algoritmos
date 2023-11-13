Algoritmo proyecto_2
	valormax<-999999
	n<-valormax
	//definir el nombre de la empresa***
	nombre_empresa <- " DevSoft "
	Dimension productos[n,5], clientes[n,6], proveedores[n,6], gastos[n,4], ventas[n,6], estadoDcuenta[(n*2),5]
	Definir  num_clientes, num_proveedores, num_productos, num_gastos Como Entero
	Repetir
		Escribir "---------------Bienvenido al menú---------------";
		Escribir "¿Qué desea realizar?"
		Escribir "1. Agregar proveedores"
		Escribir "2. Agregrar productos"
		Escribir "3. Agregar clientes"
		Escribir "4. Agregar ventas"
		Escribir "5. Agregar gastos"
		Escribir "6. Mostrar todas las matrices"
		Escribir "7. Estado de cuenta bancario"
		Escribir "8. Consulta de registros"
		Escribir "9. Salir"
		Leer accion
		si num_proveedores<1 y accion <> 1 Entonces
			Escribir "El número de proveedores es bajo, agregue adicionales para continuar"
			Repetir
				Escribir ""
				Escribir "Es necesario agregar proveedores al inicio."
				Escribir ""
				//menu de inicio
				Escribir "---------------Bienvenido al menú---------------";
				Escribir "¿Qué desea realizar?"
				Escribir "1. Agregar proveedores"
				Escribir "2. Agregrar productos"
				Escribir "3. Agregar clientes"
				Escribir "4. Agregar ventas"
				Escribir "5. Agregar gastos"
				Escribir "6. Mostrar todas las matrices"
				Escribir "7. Estado de cuenta bancario"
				Escribir "8. Consulta de registros"
				Escribir "9. Salir"
				Leer accion;
			Hasta Que accion=1 o accion=9
		FinSi
		
		Segun accion Hacer
			1:
				escribir "¿Cuantos proveedores desea ingresar? (max: 10)"
				Repetir
					Leer cant_proveedores
					si cant_proveedores<0 Entonces
						Escribir "La cantidad tiene que ser mayor a cero y menor o igual a 10"
					FinSi
				Hasta Que cant_proveedores>0 y cant_proveedores<=10
				si cant_proveedores > 5 Entonces
					Escribir "Registros por procesar: ", cant_proveedores
					Escribir "Confirme la cantidad de registros por ingresar: "
					Repetir
						Leer cant_proveedores
						si cant_proveedores<=0 Entonces
							Escribir "La cantidad tiene que ser mayor a cero y menor o igual a 10"
						FinSi
					Hasta Que cant_proveedores>0 y cant_proveedores<=10
				FinSi
				Para i<-num_proveedores Hasta (num_proveedores+cant_proveedores)-1 Hacer
					Escribir " Ingrese el id del ", i " proveedor "
					leer proveedores[i,0]
					Escribir " Ingrese el nombre del ", i " proveedor "
					leer proveedores[i,1]
					escribir " Ingrese la empresa de la que proviene el ", i, " proveedor "
					leer proveedores[i,2]
					escribir " Ingrese el teléfono del ", i, " proveedor "
					leer proveedores[i,3]
					escribir " Ingrese el correo electronico del ", i ," proveedor "
					leer proveedores[i,4]
					escribir " Ingrese el domicilo del ", i, " proveedor "
					leer proveedores[i,5]
					//num_proveedores<-num_proveedores+cant_provedores
				FinPara
				num_proveedores<-num_proveedores+cant_proveedores
			2:
				escribir "¿Cúantos productos desea agregar?"
				Repetir
					Leer cant_productos
					si cant_productos<=0 Entonces
						Escribir "La cantidad tiene que ser mayor a cero y menor o igual a 10"
					FinSi
				Hasta Que cant_productos>0 y cant_productos<=10
				para i<-num_productos Hasta (num_productos+cant_productos)-1 Hacer
					Escribir " Ingrese el ID del ", i " producto "
					leer productos[i,0]
					escribir " Ingrese el nombre del ", i, " producto "
					leer productos[i,1]
					escribir " Ingrese el proveedor del ", i, " producto "
					leer productos[i,2]
					escribir " Ingrese el precio de compra del", i ," producto "
					leer productos[i,3]
					escribir " Ingrese el precio de venta del", i ," producto "
					leer productos[i,4]
				FinPara
				num_productos<-num_productos+cant_productos
			3:
				escribir "¿Cuantos clientes desea ingresar?"
				Repetir
					Leer cant_clientes
					si cant_clientes<=0 Entonces
						Escribir "La cantidad tiene que ser mayor a cero y menor o igual a 10"
					FinSi
				Hasta Que cant_clientes>0 y cant_clientes<=10
				Para i<-num_clientes Hasta (num_clientes+cant_clientes)-1 Hacer
					Escribir " Ingrese el id del ", i " cliente "
					leer clientes[i,0]
					Escribir " Ingrese el nombre del ", i " cliente "
					leer clientes[i,1]
					escribir " Ingrese la empresa de la que proviene el ", i, " cliente "
					leer clientes[i,2]
					escribir " Ingrese el teléfono del ", i, " cliente "
					leer clientes[i,3]
					escribir " Ingrese el correo electronico del ", i ," cliente "
					leer clientes[i,4]
					escribir " Ingrese el domicilo del ", i, " cliente "
					leer clientes[i,5]
				FinPara
				num_clientes<-num_clientes+cant_clientes
			4:
				Escribir "¿Cuantas ventas va a capturar?"
				Repetir
					Leer cant_ventas
					si cant_ventas<=0 Entonces
						Escribir "La cantidad tiene que ser mayor a cero y menor o igual a 10"
					FinSi
				Hasta Que cant_ventas>0 y cant_ventas<=10
				Para i<-num_ventas Hasta (num_ventas+cant_ventas)-1 Hacer
					Escribir " Ingrese el id del ", i " ventas "
					leer ventas[i,0]
					escribir "Ingrese el nombre del producto no.", i
					leer ventas[i,1]
					Escribir " Ingrese el nombre no.", i " del cliente "
					leer ventas[i,2]
					escribir " Ingrese la empresa de la que proviene el ", i, " cliente "
					leer ventas[i,3]
					Escribir "Ingrese la fecha no.", i, " de pago. Ejemplo: 7/11/23"
					leer ventas[i,4]
					Escribir "Ingrese el monto ** no.", i, " por el pago del servicio y/o producto"
					Repetir
						leer ventas[i,5]
						si ventas[i,5] <= 0 Entonces
							Escribir "El monto debe ser mayor a cero, ingrese un monto valido:"
						FinSi
					Hasta Que ventas[i,5] > 0 
				FinPara
				Para i<-num_movimientos Hasta (num_movimientos+cant_ventas)-1 Hacer
					saldo_acumulado<-saldo_acumulado+ventas[num_ventas,5]
					estadoDcuenta[i,0]<-ventas[num_ventas,0] //id
					estadoDcuenta[i,1]<-ventas[num_ventas,1] //concepto
					estadoDcuenta[i,2]<-ventas[num_ventas,5] //abono
					estadoDcuenta[i,3]<-0 //0 en 'cargo' ya que se abona el monto
					estadoDcuenta[i,4]<-saldo_acumulado //saldo acumulado = saldo anterior + abono
					num_ventas<-num_ventas+1
				FinPara
				//num_ventas<-num_ventas+cant_ventas
				num_movimientos<-num_movimientos+cant_ventas
				
			5:	
				Escribir "¿Cuantos gastos va a capturar?"
				leer cant_gastos
				Para i<-num_gastos Hasta (num_gastos+cant_gastos)-1 Hacer
					Escribir " Ingrese el id del ", i " gasto "
					leer gastos[i,0]
					escribir "Ingrese nombre del gasto"
					leer gastos[i,1]
					Escribir "Ingrese la fecha de pago. Ejemplo: 7/11/23"
					leer gastos[i,2]
					Escribir "Ingrese el importe ** por el pago del servicio"
					Repetir
						leer gastos[i,3]
						si gastos[i,3] <= 0 Entonces
							Escribir "El monto debe ser mayor a cero, ingrese un monto valido:"
						FinSi
					Hasta Que gastos[i,3] > 0
				FinPara
				Para i<-num_movimientos Hasta (num_movimientos+cant_gastos)-1 Hacer
					saldo_acumulado<-saldo_acumulado-gastos[num_gastos,3]
					estadoDcuenta[i,0]<-gastos[num_gastos,0] //id
					estadoDcuenta[i,1]<-gastos[num_gastos,1] //concepto
					estadoDcuenta[i,2]<-0 //abono 0 ya que es un cargo
					estadoDcuenta[i,3]<-gastos[num_gastos,3]//monto de el cargo
					estadoDcuenta[i,4]<-saldo_acumulado//saldo acumulado = saldo anterior - cargo
					num_gastos<-num_gastos+1
				FinPara
				num_movimientos<-num_movimientos+cant_gastos
			6:
				//impresión de todas las matrices
			7:
				//matriz estado de cuenta bancario
				si num_movimientos=0 Entonces
					Escribir "No hay registros, agregue información para llenar..."
				SiNo
					Escribir "|    Matriz: Estado de Cuenta Bancario    |"
					Escribir ""
					Escribir Sin Saltar " |   Estado de cuenta  ", " | ", "  REPORTE   | "
					Escribir "   |   EMPRESA:  ", " |   ", nombre_empresa, "   | "
					Escribir Sin Saltar "|  ID  |  CONCEPTO  |  ABONO  |  CARGO  |  SALDO  |"
					Escribir ""
					Escribir ""
					Para i<-0 Hasta num_movimientos-1 Hacer
						Escribir Sin Saltar "|    ", estadoDcuenta[i,0], "    |    ", estadoDcuenta[i,1], "    |    ", estadoDcuenta[i,2], "    |    ", estadoDcuenta[i,3], "    |    ", estadoDcuenta[i,4], "    |    "
						Escribir ""
					FinPara
					Escribir ""
				FinSi
			8:
				//mostrar matrices con datos
				Repetir
					Escribir "Bienvenido al submenú de registros"
					escribir "¿Que desea consultar?"
					Escribir "1. Registro de proveedores"
					Escribir "2. Registro de productos"
					Escribir "3. Registro de clientes"
					Escribir "4. Registro de ventas"
					Escribir "5. Registro de gastos"
					Escribir "6. Salir"
					leer opciones
					Segun opciones Hacer
						1:
							si num_proveedores=0 Entonces
								Escribir "No hay registros, agregue información para llenar..."
							SiNo
								Escribir "|    Matriz: Proveedores    |"
								Escribir ""
								Escribir Sin Saltar "|   ID    |    NOMBRE    |    EMPRESA    |     TELÉFONO     |     CORREO     |      DOMICILIO      |"
								Escribir ""
								para i<-0 Hasta num_proveedores-1 Hacer
									Escribir ""
									Escribir Sin Saltar "|    ", proveedores[i,0], "    |    ", proveedores[i,1], "    |    ", proveedores[i,2], "    |    ", proveedores[i,3], "    |    ", proveedores[i,4], "    |    ", proveedores[i,5], "    |    "
									Escribir ""
								FinPara
								Escribir ""
							FinSi
						2:
							si num_productos=0 Entonces
								Escribir "No hay registros, agregue información para llenar..."
							SiNo
								Escribir "|    Matriz: Productos    |"
								Escribir ""
								Escribir Sin Saltar "|   ID    |    PRODUCTO    |    PROVEEDOR    |     PRECIO DE COMPRA     |     PRECIO DE VENTA     |"
								Escribir ""
								para i<-0 Hasta num_productos-1 Hacer
									Escribir ""
									Escribir Sin Saltar "|    ", productos[i,0], "    |    ", productos[i,1], "    |    ", productos[i,2], "    |    ", productos[i,3], "    |    ", productos[i,4], "    |    "
									Escribir ""
								FinPara
								Escribir ""
							FinSi
						3:
							si num_clientes=0 Entonces
								Escribir "No hay registros, agregue información para llenar..."
							SiNo
								Escribir "|    Matriz: Clientes    |"
								Escribir ""
								Escribir Sin Saltar "|    NOMBRE    |    EMPRESA    |     TELÉFONO     |     CORREO     |      DOMICILIO      |"
								Escribir ""
								Escribir ""
								Para i<-0 Hasta num_clientes-1 Hacer
									Escribir Sin Saltar "|    ", clientes[i,0], "    |    ", clientes[i,1], "    |    ", clientes[i,2], "    |    ", clientes[i,3], "    |    ", clientes[i,4], "    |    "
									Escribir ""
								FinPara
								Escribir ""
							FinSi
							
						4:
							si num_ventas=0 Entonces
								Escribir "No hay registros, agregue información para llenar..."
							SiNo
								Escribir "|    Matriz: Ventas    |"
								Escribir ""
								Escribir Sin Saltar " |   Control de Ventas  ", " | ", "  REPORTE   | "
								Escribir "   |   EMPRESA:  ", " |   ", nombre_empresa, "   | "
								Escribir Sin Saltar "|    ID    |    PRODUCTO    |     CLIENTE     |     PROVEEDOR     |      FECHA      |      GANANCIA      |"
								Escribir ""
								Escribir ""
								Para i<-0 Hasta num_ventas-1 Hacer
									Escribir Sin Saltar "|    ", ventas[i,0], "    |    ", ventas[i,1], "    |    ", ventas[i,2], "    |    ", ventas[i,3], "    |    ", ventas[i,4], "    |    ", ventas[i,5], "    |    "
									Escribir ""
								FinPara
								Escribir ""
							FinSi
						5:
							si num_gastos=0 Entonces
								Escribir "No hay registros, agregue información para llenar..."
							SiNo
								Escribir "|    Matriz: Gastos    |"
								Escribir ""
								Escribir "|   Control de gastos   |"
								Escribir ""
								Escribir Sin Saltar "|    ID    |    NOMBRE DEL GASTO     |      FECHA      |      IMPORTE      |"
								Escribir ""
								Escribir ""
								Para i<-0 Hasta num_gastos-1 Hacer
									Escribir Sin Saltar "|    ", gastos[i,0], "    |    ", gastos[i,1], "    |    ", gastos[i,2], "    |    ", gastos[i,3], "    |    "
									Escribir ""
								FinPara
								Escribir ""
							FinSi
							
						6:
							Escribir "Seleccionó la opción salir"
						De Otro Modo:
							Escribir ""
							Escribir ""
							Escribir "Opción no válida; captura 1-6..."
							Escribir ""
					Fin Segun
				Hasta Que opciones=6
			9:
				Escribir "Seleccionó la opción salir"
			De Otro Modo:
				Escribir ""
				Escribir ""
				Escribir  "Opción no válida; captura 1-9..."
				Escribir ""
		Fin Segun
	Hasta Que accion=9
FinAlgoritmo
