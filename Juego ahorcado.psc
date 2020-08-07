Algoritmo El_ahorcado
	//Dfinir las variables con camel case
	// ejemplo	álabraParaAdivinar
	
	//comentar el funcionamiento de cada segmento de codigo
	
	//al selecionar una letra de la palabra elimina la prmera y no la muestra
	//debe corregis ere error
	
	//colocar un dibujo que represente al ahorcado
	
	//implemente funciones para reducir y optimizar el codigo
	
	Definir palabraparaadivinar Como Caracter
	Definir letrascorrectas Como Caracter
	Definir letrasdeljugador como caracter
	Definir letras como caracter
	Definir intentos como entero
	Definir longitudpalabra Como Entero
	Definir contadordeaciertos Como Entero
	Definir acumuladordeaciertos Como Entero
	Definir x Como Entero
	Definir z Como Entero
	Definir control Como Entero
	
	Escribir "Bienvenido al juego del ahorcado"
	Escribir "Escriba la palabra a adivinar"
	leer palabraparaadivinar
	letrascorrectas = " "
	letrasdeljugador = " "
	longitudpalabra = Longitud(palabraparaadivinar)
	intentos = 7
	acumuladordeaciertos=0
	
	Borrar Pantalla 
	Escribir "Juego del ahorcado"
	Escribir " "
	
	Para x=1 Hasta longitudpalabra Con Paso 1 Hacer
		Escribir " _ " Sin Saltar
	Fin Para
	Escribir " "
	Escribir " "
	
	Mientras intentos >= 1 Hacer
		contadordeaciertos=0
		Escribir "Las letras usadas son: ", letrasdeljugador
		Escribir "Le quedan: ", intentos, " intentos"
		Escribir "Ingrese otra letra: "
		Leer letras
		Para z=1 Hasta Longitud(letrasdeljugador) Con Paso 1 Hacer
		 Si letras= SubCadena(letrasdeljugador,z,z) Entonces
			control=1
			z=Longitud(letrasdeljugador) + 1
			x=longitudpalabra+1
			contadordeaciertos=7
		 SiNo	
			control=6
		 Fin Si
	 Fin Para
	 Si control=6 Entonces
		letrasdeljugador = letrasdeljugador+letras
	 Fin Si
	 x=1
	 Mientras x<=longitudpalabra Hacer
		Si letras= SubCadena(palabraparaadivinar,x,x) Entonces
			contadordeaciertos=contadordeaciertos+1
			acumuladordeaciertos=acumuladordeaciertos+1
			Si acumuladordeaciertos=longitudpalabra Entonces
				x=longitudpalabra+1
				intentos=0
			Fin Si
		Fin Si
		x=x+1
	 FinMientras
	 Si contadordeaciertos>0 y contadordeaciertos<6 Entonces
		control=2
		letrascorrectas=letrascorrectas+letras
	 Fin Si
	 Si contadordeaciertos=0 Entonces
		control=3	
	 Fin Si
	 Segun control Hacer
		1:
			escribir "Esta letra ya la ha ingresado" 
			intentos=intentos+0
		2:
			Escribir "La letra es correcta", letras
			intentos=intentos+1
			
		3: 
			Escribir "Incorrecto"
	 Fin Segun	
	 Borrar Pantalla
	 control=0
	 intentos=intentos-1
	 Escribir "Juego del ahorcado"
	 Escribir " "
	 Para z=1 Hasta longitudpalabra Con Paso 1 Hacer
		contadordeaciertos=0
		Para x=1 Hasta Longitud(palabraparaadivinar) Con Paso 1 Hacer
			Si SubCadena(palabraparaadivinar,z,z) = SubCadena(letrascorrectas,x,x)Entonces
				contadordeaciertos=contadordeaciertos+1
			Fin Si
		Fin Para
		Si contadordeaciertos=0 Entonces
			Escribir " _ " Sin Saltar
		SiNo
			Escribir SubCadena(palabraparaadivinar,z,z) Sin Saltar
		Fin Si
      Fin Para
	 Escribir " "
	 Escribir " "
FinMientras
Si acumuladordeaciertos=longitudpalabra Entonces
	Escribir "Felicidades, ha ganado el juego"
SiNo
	Escribir "Ha perdido el juego"
Fin Si
FinAlgoritmo
