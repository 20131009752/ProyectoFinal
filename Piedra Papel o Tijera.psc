Algoritmo sin_titulo
	Definir val1,val2,partida,n1,n2,n3 Como Entero
	Definir respuesta Como Caracter
	//respuesta=" "
	Repetir
		Escribir " Jugador1 : Ingresa el valor[1 = piedra,2 = papel, 3 = tijeras ]"
		Leer val1 
		Limpiar Pantalla
		Escribir " Jugador2 : Ingresa el valor[1 = piedra,2 = papel, 3 = tijeras ]"
		Leer val2
		Limpiar Pantalla
		Si (val1 <> val2) Entonces
			Si (val1==1 y val2==3) o ( val1==2 y val2==1) o( val1==2 y val2==3) Entonces
				Escribir "Gana Jugador 1 "
				partida <- 0
				n1=n1+1
				Escribir "Desea seguir jugando si/no:"
				Leer respuesta
				Limpiar Pantalla
			SiNo
				Si (val2==1 y val1==3) o ( val2==2 y val1==1) o( val2==2 y val1==3) Entonces
					Escribir "Gana Jugador 2 "
					partida <- 0
					n2=n2+1
					Escribir "Desea seguir jugando si/no:"
					Leer respuesta
					Limpiar Pantalla
				fin si
				
			Fin Si
		SiNo
			Limpiar Pantalla 
			Escribir "Empate"
			Escribir ""
			Escribir "Desea seguir jugando si/no:"
			Leer respuesta
			Limpiar Pantalla
			n3=n3+1
		Fin Si
	Hasta Que respuesta="no"
	Mostrar "Jugador 1 gano un total de " n1 " veces"
	Mostrar "Jugador 2 gano un total de " n2 " veces"
	Mostrar "Empataron un total de " n3 " veces"
FinAlgoritmo