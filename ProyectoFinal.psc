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
	
	Segun op Hacer
		1:
			Escribir "Llamar a la funcion que corresponde 1"
		2:
			Escribir "Llamar a la funcion que corresponde 2"
		3:
			Escribir "Llamar a la funcion que corresponde 3"
		4:
			Escribir "Llamar a la funcion que corresponde 4"
			Definir decimal Como Entero
			decimal = PedirNumero("Ingrese un numero decimal")
			Escribir "El numero binario de ", decimal, "es: ", ConvertDecimalABinario(decimal)
		5:
			Escribir "Llamar a la funcion que corresponde 5"
		6:
			Escribir "Llamar a la funcion que corresponde 6"
		De Otro Modo:
			Escribir "La opción ingresada no es valida"
			Escribir "Precione una tecla para Ingresar una opción"
			Esperar Tecla
	Fin Segun
	Esperar Tecla
	Limpiar Pantalla
FinFuncion


Algoritmo ProyectoFinal
	Definir op Como Entero
	Mientras op <> 6 Hacer
		EscribirMenu()
		op = PedirNumero("Ingrese una opción")
		EjecutarOpcion(op)
	Fin Mientras
FinAlgoritmo


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


