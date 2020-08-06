Algoritmo La_Diaria
	definir alea1,alea2 Como Entero
	Definir n,x Como Entero
	Definir j,respuesta Como Caracter
	
	//respuesta=" ";
	
	Escribir "Este es el juego de la diaria, espero que lo disfrute y que la suerte siempre este de tu lado."
	escribir ""
	Escribir "Presione Enter para continuar"
	Esperar Tecla
	Limpiar Pantalla
	
	Repetir
		
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
		
		Escribir "Desea seguir jugando si/no"
		Leer respuesta
		Limpiar Pantalla
		
	Hasta Que respuesta="no"
	
FinAlgoritmo

