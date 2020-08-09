Funcion EscribirMenu ( )
	//Muestra las opciones del menú principal
	
	Escribir "* * * * * * * * * * * * * * * * * * * * * * *"
	Escribir "*              Menu Principal               *"
	Escribir "* * * * * * * * * * * * * * * * * * * * * * *"
	Escribir "*    1. Juego del ahorcado                  *"
	Escribir "*    2. Juego de la diaria                  *"
	Escribir "*    3. Juego piedra papel o tijera         *"
	Escribir "*    4. Conversion de decimal a binario     *"
	Escribir "*    5. conversion a numeros romanos        *"
	Escribir "*    6. Salir                               *"
	Escribir "* * * * * * * * * * * * * * * * * * * * * * *"
Fin Funcion


Funcion num <- PedirNumero(mensaje)
	//Solicita un numero al usuario
	//Parámetros:
	//mensaje: contiene la cadena que se mostrara en la solicitud
	definir num Como Entero
	Escribir Sin Saltar mensaje
	Leer num
FinFuncion


Funcion EjecutarOpcion(op)
	//Ejecuta la opción recibida y muestra la interface de
	//cada una de ellas
	//Parámetros:
	//op: opcion del menu elejida por el usuario
	Definir seguir Como Caracter
	Segun op Hacer
		1:
			Repetir
				JuegoAhorcado()
				//pregunta al usuario si desea volver a jugar
				seguir ="NO"
				Escribir Sin Saltar  "¿Quieres volver a jugar? SI/NO: "
				leer seguir
				seguir = Mayusculas(seguir)
			Hasta Que seguir = "NO"
			Limpiar Pantalla
		2:
			LaDiaria()
		3:
			Escribir "Llamar a la funcion que corresponde 3"
		4:
			Repetir
				Limpiar Pantalla
				Definir decimal Como Entero
				TituloBinario()
				decimal = PedirNumero("Ingrese un numero decimal")
				Escribir "El numero binario de ", decimal, "es: ", ConvertDecimalABinario(decimal)
				//pregunta al usuario si desea volver a jugar
				seguir ="NO"
				Escribir Sin Saltar  "¿Quieres ingresar otro numero? SI/NO: "
				leer seguir
				seguir = Mayusculas(seguir)
			Hasta Que seguir = "NO"
			Limpiar Pantalla
		5:
			Escribir "Llamar a la funcion que corresponde 5"
		6:
			Escribir "Llamar a la funcion que corresponde 6"
		De Otro Modo:
			Escribir "La opción ingresada no es valida"
			Escribir "Precione una tecla para Ingresar una opción"
			Esperar Tecla
	Fin Segun
FinFuncion


Algoritmo ProyectoFinal
	Definir op Como Entero
	Mientras op <> 6 Hacer
		Limpiar Pantalla
		EscribirMenu()
		op = PedirNumero("Ingrese una opción")
		EjecutarOpcion(op)
	Fin Mientras
FinAlgoritmo


Funcion TituloBinario( )
	//Muestra las opciones del menú principal
	
	Escribir "* * * * * * * * * * * * * * * * * * * * * * *"
	Escribir "*            DECIMAL A BINARIO              *"
	Escribir "* * * * * * * * * * * * * * * * * * * * * * *"
Fin Funcion

Funcion binario <- ConvertDecimalABinario(decimal)
	//Funsión recursiva que nos permite calcular el numero
	//binario de un numero decimal
	//Parámetros:
	//decimal: contiene el numero decimal a convertir a binario
	//
	//cociente: valor del cociente calculado en la división
	//binario: valor a retornar conteniendo en numero binario
	
	Definir cociente Como Entero
	Definir  binario Como Caracter
	
	si decimal > 1 Entonces
		//Tomamos solo el valor entero del cociente de la división
		si decimal % 2 == 1 Entonces
			cociente = (decimal - 1) / 2	
		SiNo
			cociente = decimal / 2
		FinSi
		//Acumulamos el valor del binario
		binario = ConvertDecimalABinario(cociente) + ConvertirATexto(decimal % 2)
	SiNo
		//retornamos el valor base
		binario = ConvertirATexto(decimal)
	FinSi
FinFuncion


///Juego del ahorcado ------------------------------------------------------------------------------>
Funcion TituloAhorcado( )
	//Muestra las opciones del menú principal
	
	Escribir "* * * * * * * * * * * * * * * * * * * * * * *"
	Escribir "*           JUEGO DEL AHORCADO              *"
	Escribir "* * * * * * * * * * * * * * * * * * * * * * *"
Fin Funcion

Funcion adivino <- AdivinoPalabra (letrasMostradas, tamanio)
	//Escribre las letras adivinadas por el usuario
	//Parámetros:
	//letrasMostradas: contiene las letras 
	//tamanio: tamaño del arreglo
	Definir adivino Como Logico
	Definir pos Como Entero
	adivino = Verdadero
	Para pos = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Si letrasMostradas[pos] == Falso Entonces
			adivino = Falso
		FinSi
	Fin Para
Fin Funcion


Funcion  EscribirLetrasEncontradas(palabraFinal, letrasMostradas, tamanio)
	//Escribre las letras encontradas por el usuario
	//
	//Parámetros:
	//palabraFinal: contiene la palabra a adivinar
	//letrasMostradas: contiene las letras que ha asertado
	//tamanio: tamaño del arreglo
	definir pos Como Entero
	Para pos = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Si letrasMostradas[pos] == Verdadero Entonces
			Escribir Sin Saltar palabraFinal[pos], " "
		SiNo
			Escribir Sin Saltar "_ "
		FinSi
	Fin Para
	Escribir " "
Fin Funcion


Funcion  EscribirLetrasInsertadas(letrasInsertadas, tamanio)
	//Escribre las letras insertadas por el usuario
	//
	//Parámetros:
	//letrasInsertadas: contiene las letras 
	//tamanio: tamaño del arreglo
	definir pos Como Entero
	Para pos = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Si letrasInsertadas[pos] <> "" Entonces
			si pos == 0 Entonces
				Escribir Sin Saltar letrasInsertadas[pos]
			SiNo
				Escribir Sin Saltar ", " + letrasInsertadas[pos]
			FinSi
		FinSi
	Fin Para
	Escribir " "
Fin Funcion

Funcion MostrarDibujo(intentos)
	Segun intentos Hacer
		0:
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
		1:
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "___________";
		2:
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "___________";
		3:
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
		5:
			Escribir "|------";
			Escribir "|     |";
			Escribir "|     0";
			Escribir "|    /|";
			Escribir "|";
			Escribir "___________";
		6:
			Escribir "|------";
			Escribir "|     |";
			Escribir "|     0";
			Escribir "|    /|\" ;
			Escribir "|";
			Escribir "___________";
		7:
			Escribir "|------";
			Escribir "|     |";
			Escribir "|     0";
			Escribir "|    /|\";
			Escribir "|    / \";
			Escribir "___________";
	FinSegun
FinFuncion


Funcion JuegoAhorcado()
	Definir op Como Caracter
	Limpiar Pantalla
	
	
	Definir pos Como Entero //Variables para controlar ciclos
	Definir palabras,palabraAzar, palabraFinal Como Caracter
	Definir cantidadDePalabras Como Entero
	
	Definir intentos Como Enteros
	
	Definir contadorLetras Como Entero
	contadorLetras = 0
	
	Definir letra Como Caracter
	
	cantidadDePalabras = 10
	Dimension palabras[cantidadDePalabras]
	
	//llenamos nuestro diccionario de palabras
	palabras[0] = "COMPUTADORA"
	palabras[1] = "LAPTOP"
	palabras[2] = "PANTALLA"
	palabras[3] = "SISTEMA"
	palabras[4] = "REDES"
	palabras[5] = "ALGORITMO"
	palabras[6] = "CODIGO"
	palabras[7] = "FUNTAMENTOS"
	palabras[8] = "TECNOLOGIA"
	palabras[9] = "IMPRESORA"
	
	//Seleccionamos una palabra al azar de nuestro diccionario
	palabraAzar = palabras[Azar(cantidadDePalabras)]
	
	//pasamos nuestra palabra a un arreglo
	Dimension palabraFinal[Longitud(palabraAzar)]
	Para pos = 0 Hasta Longitud(palabraAzar) - 1 Con Paso 1 Hacer
		palabraFinal[pos] = Subcadena(palabraAzar, pos, pos)
	Fin Para
	//Definicion de variables
	Definir EncontroLetra Como Logico
	Definir letrasInsertadas Como Caracter
	Definir letrasMostradas Como Logico
	Dimension letrasInsertadas[100]
	Dimension letrasMostradas[Longitud(palabraAzar)]
	
	//inicializamos los valores que determinan si nuestras letras 
	//estan mostrados o no
	Para pos = 0 Hasta Longitud(palabraAzar) - 1 Con Paso 1 Hacer
		letrasMostradas[pos] = Falso
	Fin Para
	
	op = "SI"
	TituloAhorcado()
	Escribir "Ingrese una letra:"
	Leer letra
	letra = Mayusculas(letra)
	
	// ciclo del juego
	Repetir
		TituloAhorcado()
		EncontroLetra = Falso
		
		letrasInsertadas[contadorLetras] = letra //la agregamos a las letras incertadas
		contadorLetras = contadorLetras + 1 //aumentamos la cantidad de letras
		
		
		// verificamos si la letra existe en nuestra palabra
		Para pos = 0 Hasta Longitud(palabraAzar) - 1 Con Paso 1 Hacer
			Si	palabraFinal[pos] == letra Entonces
				letrasMostradas[pos] = Verdadero
				EncontroLetra = Verdadero
			FinSi
		Fin Para
		
		// si no ha encontrado la letra aumenta uno en intentos fallidos
		Si EncontroLetra == Falso Entonces
			intentos = intentos + 1
		FinSi
		
		//Funcion que escribe las letras encontradas dentro de la palabra
		EscribirLetrasEncontradas(palabraFinal, letrasMostradas, Longitud(palabraAzar))
		
		Escribir "Letras ingresadas:"
		EscribirLetrasInsertadas(letrasInsertadas, 100)
		
		
		//muestra el dibujo de la imagen
		MostrarDibujo(intentos)
		
		
		SI AdivinoPalabra(letrasMostradas, Longitud(palabraAzar)) == Falso  Entonces
			//Solicitamos una letra al usuario
			Escribir "Ingrese una letra:"
			Leer letra
			letra = Mayusculas(letra)
		FinSi
		
	Hasta Que (intentos == 7) o (AdivinoPalabra(letrasMostradas, Longitud(palabraAzar)) == Verdadero)
	
	//Muestra un mensaje si gano o no
	Si AdivinoPalabra(letrasMostradas, Longitud(palabraAzar)) == Verdadero Entonces
		Escribir "Felicidades adivinaste la palabra"
	SiNo
		Escribir "Lo siento has perdido"
		Escribir Sin Saltar "La palabra es: ", palabraAzar
		Escribir ""
	FinSi
FinFuncion

/// Juego de la diaria -------------------------------------------------------------

Funcion TituloDiaria( )
	//Muestra las opciones del menú principal
	
	Escribir "* * * * * * * * * * * * * * * * * * * * * * *"
	Escribir "*          SORTEO DE LA DIARIA              *"
	Escribir "* * * * * * * * * * * * * * * * * * * * * * *"
Fin Funcion
Funcion  LaDiaria()
	///definir las variables con nombres mas desciptivos
	///utilice camel case
	
	///implemente funsiones para la optimizacion del codigo
	
	///comentar la funcionalidad de los diferentes segmentos
	definir alea1,alea2 Como Entero
	Definir n,x Como Entero
	Definir j,respuesta Como Caracter
	
	Limpiar Pantalla
	
	Repetir
		TituloDiaria()
		Escribir "Ingrese un numero de 2 digitos, puede ser del 00 hasta el 99"
		Leer n
		Escribir ""
		
		alea1=azar(9)
		alea2=azar(9)
		
		Escribir "El primer digito ganador es:"
		escribir alea1
		Escribir "El segundo digito ganador es:"
		escribir alea2
		j=ConvertirATexto(alea1)+ConvertirATexto(alea2)
		Escribir ""
		Escribir "Presiones Enter para observar sus resultados"
		Esperar Tecla
		Limpiar Pantalla
		TituloDiaria()
		Escribir "El numero que usted ingreso es:"
		Escribir  n
		escribir "El numero ganador es: "
		Escribir j
		Escribir ""
		x=ConvertirANumero(j)
		si n=x Entonces
			Escribir "Felicidades has sido es el afortunado ganador"
		SiNo
			Escribir "Has perdido"
			escribir "Espero tengas mas suerte para la proxima :("
		FinSi
		Escribir ""
		
		Escribir "Desea seguir jugando SI/NO"
		Leer respuesta
		respuesta = Mayusculas(respuesta)
		Limpiar Pantalla
		
	Hasta Que respuesta="NO"
FinFuncion



