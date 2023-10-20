Algoritmo tienda
	
	//vectores para almacenar la cantidad de productos en las sucursales
	Dimension cantsucursal1[5]
	dimension cantsucursal2[5]
	dimension cantsucursal3[5]
	dimension cantsucursal4[5]
	
	//vector para los precios de los productos de las sucursales 
	dimension preciosucursal1[5]
	dimension preciosucursal2[5]
	dimension preciosucursal3[5]
	dimension preciosucursal4[5]
	Dimension canttotalproductos[5]
	
	//ciclos para cada sucursal en el que se ingrese cuanto cuesta cada producto y cuantos se vendieron de cada uno
	para i<-1 hasta 5 con paso 1 hacer
		escribir " Bienvenido a la sucursal 1 "
		escribir " ¿Cuanto dinero cuesta el producto ", i, "? "
		leer preciosucursal1[i]

		escribir " ¿Cuantas unidades del producto ", i, " se vendieron? "
		leer cantsucursal1[i]
		
		//contadores del total de productos que se vendieron, la cantidad que se vendio del articulo 3 y la recaudacion total en esta sucursal
		canttotalproductos[i]<-canttotalproductos[i]+cantsucursal1[i]
		sucursal1art3<-sucursal1art3+cantsucursal1[3]
		rectotal1<-recttotal1+preciosucursal1[i]*cantsucursal1[i]
	FinPara
	
	//el mismo ciclo de arriba pero para la sucursal 2

	para i<-1 hasta 5 con paso 1 hacer
		escribir " Bienvenido a la sucursal 2 "
		escribir " ¿Cuanto dinero cuesta el producto ", i, "? "
		leer preciosucursal2[i]
		
		escribir " ¿Cuantas unidades del producto ", i, " se vendieron? "
		leer cantsucursal2[i]
		
		canttotalproductos[i]<-canttotalproductos[i]+cantsucursal2[i]
		sucursal2art<-sucursal2art+cantsucursal2[i]
		rectotal2<-rectotal2+preciosucursal2[i]*cantsucursal2[i]
	FinPara
	
	para i<-1 hasta 5 con paso 1 hacer
		escribir " Bienvenido a la sucursal 3 "
		escribir " ¿Cuanto dinero cuesta el producto ", i, "? "
		leer preciosucursal3[i]
		
		escribir " ¿Cuantas unidades del producto ", i, " se vendieron? "
		leer cantsucursal3[i]
		
		canttotalproductos[i]<-canttotalproductos[i]+cantsucursal3[i]
		rectotal3<-rectotal3+preciosucursal3[i]*cantsucursal3[i]
	FinPara
	
	para i<-1 hasta 5 con paso 1 hacer
		escribir " Bienvenido a la sucursal 4 "
		escribir " ¿Cuanto dinero cuesta el producto ", i, "? "
		leer preciosucursal4[i]
		
		escribir " ¿Cuantas unidades del producto ", i, " se vendieron? "
		leer cantsucursal4[i]
		
		canttotalproductos[i]<-canttotalproductos[i]+cantsucursal4[i]
		rectotal4<-rectotal4+preciosucursal4[i]*cantsucursal4[i]
	FinPara
	
	//suma de la recaudacion total de la empresa en donde se suman las 4 variables de cada sucursal
	recaudacionempresa<-rectotal1+rectotal2+rectotal3+rectotal4
	
	
	//ciclo que imprime la cantidad vendida de cada producto
	para i<-1 Hasta 5 con paso 1 Hacer
		escribir " La cantidad total vendida del", i ,"articulo fue: ", canttotalproductos[i]
	FinPara
	
	//se imprimen el total de recaudación de cada sucursal
	escribir " El total de ventas del producto 3 en la sucursal 1 fue de :",sucursal1art3
	escribir " La cantidad de productos vendidos de la sucursal 2 fue de: ",sucursal2art
	escribir " El total de recaudación de la sucursal 1 fue de: ", rectotal1
	Escribir " El total de recaudacion de la sucursal 2 fue de: ", rectotal2
	Escribir " El total de recaudacion de la sucursal 3 fue de: ", rectotal3
	Escribir " El total de recaudacion de la sucursal 4 fue de: ", rectotal4
	escribir " La recaudacion total de la empresa es: ", recaudacionempresa
	
	//comparaciones para saber que sucursal fue la que vendio mas 
	si rectotal1>rectotal2 y rectotal1>rectotal3 y rectotal1>rectotal4 Entonces
		escribir " La recaudacion mayor fue la de la sucursal 1 "
	FinSi
	si rectotal2>rectotal1 y rectotal2>recttotal3 y rectotal2>rectotal4 Entonces
		escribir " La recaudación mayor fue la de la sucursal 2 "
	FinSi
	si rectotal3>rectotal1 y rectotal3>rectotal2 y rectotal3>rectotal4 Entonces
		escribir " La recaudación mayor fue la de la sucursal 3 "
	FinSi
	si rectotal4>rectotal1 y rectotal4>rectotal2 y rectotal4>rectotal3 entonces
		Escribir " La recaudación mayor fue la de la sucursal 4 "
	FinSi
	
	
	
	
	
	
	
FinAlgoritmo
