Algoritmo intentos_clave
	
	//definimos las variables que vamos a utilizar
	definir clave, oportunidades, contra, clave_1, clave_2, clave_3 Como Entero;
	
	//se inicializan las variables 
	clave_1<-352;
	clave_2<-259;
	clave_3<-568;
	oportunidades<-0;
	
	//creamos el ciclo repetir en donde se pedira ingresar la contraseña
	//y si coincide con una de las 3 inicializadas te dejara entrar al sistema
	//si no te marcará acceso denegado y dará solamente tres oportunidades
	// para acceder
	Repetir
		
		Escribir "Ingrese la clave de acceso";
		leer contra;
		
		oportunidades<-oportunidades+1;
		
		si (contra=clave_1 o contra=clave_2 o contra=clave_3) Entonces
			Escribir "Bienvenido";
		sino 
			Escribir "Acceso denegado";
			
		FinSi
		
	
		
	Hasta Que oportunidades=3 o contra=clave_1 o contra=clave_2 o contra=clave_3
	
	
	
	
	
FinAlgoritmo
	