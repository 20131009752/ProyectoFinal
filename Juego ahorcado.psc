Algoritmo El_ahorcado
	//Dfinir las variables con camel case
	// ejemplo	álabraParaAdivinar
	
	//comentar el funcionamiento de cada segmento de codigo
	
	//al selecionar una letra de la palabra elimina la prmera y no la muestra
	//debe corregis ere error
	
	//colocar un dibujo que represente al ahorcado
	
	//implemente funciones para reducir y optimizar el codigo
	
	Definir PalabraParaAdivinar Como Caracter
	Definir LetrasCorrectas Como Caracter
	Definir LetrasDelJugador como caracter
	Definir Letras como caracter
	Definir Intentos como entero
	Definir LongitudPalabra Como Entero
	Definir ContadorDeAciertos Como Entero
	Definir AcumuladorDeAciertos Como Entero
	Definir x Como Entero
	Definir z Como Entero
	Definir Control Como Entero
	// iniciazalizacion de textos
	Escribir "Bienvenido al juego del ahorcado"
	Escribir "Escriba la palabra a adivinar"
	leer PalabraParaAdivinar
	LetrasCorrectas = " "
	LetrasDelJugador = " "
	LongitudPalabra = Longitud(PalabraParaAdivinar)
	Intentos = 7
	AcumuladorDeAciertos=0
	//Mensaje al usuario
	Borrar Pantalla 
	Escribir "Juego del ahorcado"
	Escribir " "
	//Creacion del tablero para el juego
	Para x=1 Hasta LongitudPalabra Con Paso 1 Hacer
		Escribir " _ " Sin Saltar
	Fin Para
	Escribir " "
	Escribir " "
	// ciclo repetitivo para pedir letras en el juego
	Mientras Intentos >= 1 Hacer
		ContadorDeAciertos=0
		Escribir "Le quedan: ", Intentos, " intentos"
		Escribir "Ingrese una letra: "
		Leer Letras
		// compara una letra de la palabra para adivinar con todas las letras ingresadas por el jugador
		Para z=1 Hasta Longitud(LetrasDelJugador) Con Paso 1 Hacer
		 Si Letras= SubCadena(LetrasDelJugador,z,z) Entonces
			Control=1
			z=Longitud(LetrasDelJugador) + 1
			x=LongitudPalabra+1
			ContadorDeAciertos=7
		 SiNo	
			Control=2
		 Fin Si
	 Fin Para
	 // si la letra es nueva, se agrega a la variable de acumulacion de letras
	 Si Control=6 Entonces
		LetrasDelJugador = LetrasDelJugador+Letras
	 Fin Si
	 x=1
	 // recorrer la palabra a adivinar y verificar si la letra existe en ella
	 Mientras x<=LongitudPalabra Hacer
		Si Letras= SubCadena(PalabraParaAdivinar,x,x) Entonces
			ContadorDeAciertos=ContadorDeAciertos+1
			AcumuladorDeAciertos=AcumuladorDeAciertos+1
			Si AcumuladorDeAciertos=LongitudPalabra Entonces
				x=LongitudPalabra+1
				Intentos=0
			Fin Si
		Fin Si
		x=x+1
	FinMientras
	
	// si tuvo por lo menos un acierto, actualiza los aciertos del jugador
	 Si ContadorDeAciertos>0 y ContadorDeAciertos<6 Entonces
		Control=2
		LetrasCorrectas=LetrasCorrectas+Letras
	Fin Si
	// no se dieron aciertos
	 Si ContadorDeAciertos=0 Entonces
		Control=3	
	 Fin Si
      Segun Control Hacer
		1:
			escribir "Esta letra ya la ha ingresado" 
			Intentos=Intentos+0
		2:
			Escribir "La letra es correcta", Letras
			Intentos=Intentos+1
			
		3: 
			Escribir "Incorrecto"
	 Fin Segun	
	 Borrar Pantalla
	 Segun Intentos  Hacer
		
		 7:
			 Escribir "";
			 Escribir "";
			 Escribir "";
			 Escribir "";
			 Escribir "";
			 Escribir "";
		 6:
			 Escribir "|";
			 Escribir "|";
			 Escribir "|";
			 Escribir "|";
			 Escribir "|";
			 Escribir "___________";
		 5:
			 Escribir "|------";
			 Escribir "|";
			 Escribir "|";
			 Escribir "|";
			 Escribir "|";
			 Escribir "___________";
		 4:
			 Escribir "|------";
			 Escribir "|     |";
			 Escribir "|     0";
			 Escribir "|";
			 Escribir "|";
			 Escribir "___________";
		 3:
			 Escribir "|------";
			 Escribir "|     |";
			 Escribir "|     0";
			 Escribir "|    /|";
			 Escribir "|";
			 Escribir "___________";
		 2:
			 Escribir "|------";
			 Escribir "|     |";
			 Escribir "|     0";
			 Escribir "|    /|\" ;
			 Escribir "|";
			 Escribir "___________";
		 1:
			 Escribir "|------";
			 Escribir "|     |";
			 Escribir "|     0";
			 Escribir "|    /|\";
			 Escribir "|    / \";
			 Escribir "___________";
	 FinSegun
	 // actualizacion de variables
	 Control=0
	 Intentos=Intentos-1
	 Escribir "Juego del ahorcado"
	 Escribir " "
	 // mostrar las letras o los espacios
	 Para z=1 Hasta LongitudPalabra Con Paso 1 Hacer
		 ContadorDeAciertos=0
		 // compara una letra de la palabra secreta con todas las ingresadas por el jugador
		Para x=1 Hasta Longitud(PalabraParaAdivinar) Con Paso 1 Hacer
			Si SubCadena(PalabraParaAdivinar,z,z) = SubCadena(LetrasCorrectas,x,x)Entonces
				ContadorDeAciertos=ContadorDeAciertos+1
			Fin Si
		Fin Para
		// sin aciertos, muestro un espacio en blanco, de lo contrario muestro la letra
		Si ContadorDeAciertos=0 Entonces
			Escribir " _ " Sin Saltar
		SiNo
			Escribir SubCadena(PalabraParaAdivinar,z,z) Sin Saltar
		Fin Si
      Fin Para
	 Escribir " "
	 Escribir " "
 FinMientras
 
Si AcumuladorDeAciertos=LongitudPalabra Entonces
	Escribir "Felicidades, ha ganado el juego"
SiNo
	Escribir "Ha perdido el juego"
Fin Si
FinAlgoritmo
