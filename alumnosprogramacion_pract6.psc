Algoritmo alumnos_programacion
	 //se definen las variables
	Definir carrera, nombre, programacion, desea_continuar, acepto,alumno, mejor_unidad Como Caracter;
	Definir calf_1, calf_2, calf_3, calf_4, promedio_alumno, alumnos, aprobados, reprobados, promedio, promedio_grupal Como real;
	Definir mejorpromedio, contador Como Real;
	 //se declara y se inician
	acepto<-"acepto";
	alumnos<-0;
	aprobados<-0;
	reprobados<-0;
	contador<-0;
	mejorpromedio<-0;
	promedio<-0;
	
	//se pide ingresar los datos
	escribir "Ingrese la carrera";
	leer carrera;
	
	
	Mientras acepto="acepto" hacer
		Escribir "Ingrese nombre del alumno";
		leer nombre;
		Escribir "Ingrese calificacion 1";
		leer calf_1;
		Escribir "Ingrese calificacion 2";
		leer calf_2;
		escribir "Ingrese calificacion 3";
		leer calf_3;
		escribir "Ingrese calificacion 4";
		leer calf_4;
	
		//se hacen los calculos
		promedio_alumno<-(calf_1+calf_2+calf_3+calf_4)/4;
		
		
		si (promedio_alumno>mejorpromedio) Entonces
			mejorpromedio<-promedio_alumno;
			alumno<-nombre;
		FinSi
		
		Si (promedio_alumno>=7) Entonces
			aprobados<-aprobados+1;
		SiNo
			reprobados<-reprobados+1;
		FinSi
		
		Si calf_1>calf_2 y calf_1>calf_3 y calf_1>calf_4 Entonces
			mejor_unidad<-"Unidad 1";
		SiNo
			si calf_2>calf_3 y calf_2>calf_4 Entonces
				mejor_unidad<-"Unidad 2";
			SiNo
				si calf_3>calf_4 Entonces
					mejor_unidad<-"Uniddad 3";
				SiNo
						mejor_unidad<-"Unidad 4";
					FinSi
				FinSi
			FinSi
		
		
		promedio_grupal<-promedio_alumno+alumnos;
		alumnos<-alumnos+1;
		
		Escribir "¿Desea continuar? escriba: acepto";
		leer acepto;
	
	
	FinMientras
	
	mejorpromedio<-promedio_alumno/alumnos;
	
	
	
	//se arrojan los resultados
	Escribir "Alumnos aprobados:", aprobados;
	Escribir "Alumnos reprobados:", reprobados;
	Escribir "El promedio grupal es:", mejorpromedio;
	Escribir "La mejor unidad es:", mejor_unidad;
	Escribir "El mejor promedio fue:", mejorpromedio;
	
	

FinAlgoritmo
	
	
	
