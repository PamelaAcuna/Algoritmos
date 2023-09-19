Algoritmo calcula_promedio_n_personas
	
	//definir variables
	definir N, contador, matricula, contador2 Como Entero;
	Definir calif1, calif2, calif3, calif4, calif5, promedio Como real ;
	definir nombre Como Caracter;
	
	
	//controlador del numero de veces de recorridos el ciclo
	contador<-1;
	//solicitar el numero de personas
	Escribir "¿Cuantos alumnos calcularas calificaciones?";
	//numero de personas
	Leer N;
	//ciclo para calcular calificaciones
	Mientras contador<=N Hacer
		//calculo de calificaciones
		contador2<-0;
		Escribir "Introduce la matrícula";
		leer matricula;
		Escribir "introduce el nombre del alumno";
		leer nombre;
		Escribir "proporciona las 5 calificaciones";
		leer calif1, calif2, calif3, calif4, calif5;
		
		//calculamos el promedio
		promedio<-(calif1+calif2+calif3+calif4+calif5)/5;
		
		//immprimir la boleta de calificaciones y estatus del alumno
		Escribir "matricula: ", matricula, "Nombre del alumno: ", nombre;
		Escribir "Las calificaciones son: ";
		escribir " ", calif1;
		Escribir " ", calif2;
		Escribir " ", calif3;
		Escribir " ", calif4;
		Escribir " ", calif5;
		
		//validar calificaciones
		si calif1 > 100 o calif1<=0   Entonces
			Escribir "Error, no se admite esa cantidad en calif1";
		FinSi
		si calif2 > 100 o calif2 <=0 Entonces
			Escribir "Error, no se admite esa cantidad en calif2";
		FinSi
		si calif3 > 100 o calif3 <=0 Entonces
			Escribir "Error, no se admite esa cantidad en calif3";
		FinSi
		si calif4 > 100 o calif4 <=0 Entonces
			Escribir "Error, no se admite esa cantidad en calif4";
		FinSi
		si calif5 > 100 y calif5<=0 entonces
			Escribir "Error, no se admite esa cantidad en calif5";
		FinSi
		//con el contador2 haremos que vaya contando cuantas unidades estan reprobadas para que automaticamente marque reprobado
		Si calif1<60 Entonces
			contador2 <- contador2 + 1;
		FinSi
		Si calif2<60 Entonces
			contador2 <- contador2 + 1;
		FinSi
		si calif3<60 Entonces
			contador2 <- contador2 + 1;
		FinSi
		si calif4<60 Entonces
			contador2 <- contador2 + 1;
		FinSi
		si calif5<60 Entonces
			contador2 <- contador2 + 1;
		FinSi
		
		
		//aqui indicamos que con unoa sola unidad reprobada todo dará como reprobado y si no, y el promedio es mayor o igual a 7 en todas las unidades calculara el promedio y marcara como aprobado
		si contador2 >= 1 Entonces
			Escribir "REPROBADO";
		SiNo
			si promedio>=70 Entonces
				Escribir "Alumno aprobado";
			SiNo
				Escribir "Alumno reprobado";
			FinSi
		FinSi
		
		
		contador<-contador+1;
		
		

		
		
		
	FinMientras
	
	
	
	
	Escribir "Fin de impresion de boletas de calificaciones";
	
	
	
	
	
FinAlgoritmo
