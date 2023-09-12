Proceso Numeromayor
	definir N1 Como Entero;
	definir N2 Como Entero;
	escribir " ingresa N1 ";
	leer N1;
	leer N2;
	Si N1 > N2 Entonces
		escribir "N1 es mayor a N2";
		Si N1 >= 10 Y N1 <= 100 Entonces
			Si N1 mod 2==0 Entonces
				escribir "es par";
			FinSi
		FinSi
	SiNo
		escribir "N2 es mayor a N1";
		Si N2 >= 10 Y N1 <= 100 Entonces
			Si N2 mod 2==0 Entonces
				escribir "es par";
			FinSi
		FinSi
	FinSi
	
	
FinProceso
