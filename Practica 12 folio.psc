Algoritmo folio
	total<-0
	totalcompra<-0
	totalprod<-0
	accion<-"SI"
	salir<-"NO"
	Repetir
		Escribir "Ingrese el producto"
		leer prod
		escribir "Ingrese el precio"
		leer cost
		Escribir "Ingrese la calave del producto"
		leer clave
		Escribir "Ingrese la categoría del producto"
		leer categ
		escribir "Ingrese descripción del producto"
		leer descr
		escribir "¿Desea seguir comprando productos? escribir SI o NO"
		leer accion
		totalprod<-totalprod+1
		totalcompra<-totalcompra+cost
		total<-total+totalcompra
	Hasta Que (accion="NO" o accion = "no" o accion = "No")
	
	repetir 
		escribir "Ingrese su nombre"
		leer nombre
		escribir "Ingrese su domicilio"
		leer domicilio
		escribir "ingrese su número de teléfono"
		leer numtel
		escribir "Ingrese su código postal"
		leer codpostal
		escribir "Ingrese su correo electrónico"
		leer correo
		escribir "Para continuar escribe: 3"
		leer continuar
	Hasta Que continuar=3
	
	si totalprod=5 o totalprod>5 Entonces
		si totalcompra=5000 o totalcompra>5000 o totalcompra=10000 o totalcompra<10000 Entonces
			si codpostal=87000 Entonces
				escribir "La factura se timbró"
			sino 
				Escribir "La factura no se timbró"
			FinSi
				
			FinSi
		FinSi
	
	
	
	
	
	si totalcompra=10000 o totalcompra>10000 Entonces
		escribir "Folio de la factura: 20"
	SiNo
		escribir "Folio de la factura: 10"
	FinSi
	
escribir "El total de la compra:", total
Escribir "El total de productos comprados:" totalprod
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
