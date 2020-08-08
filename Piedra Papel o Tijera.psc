Algoritmo piedra_papel_tigera
	Escribir " juan : ingresa el valor[1 = piedra,2 = papel, 3 = tijeras ]"
	Leer val1 
	Escribir " franco: ingresa el valor[1 = piedra,2 = papel, 3 = tijeras ]"
	Leer val2
	Si (val1 <> val2) Entonces
		Si (val1==1 y val2==3) o ( val1==2 y val2==1) o( val1==2 y val2==3) Entonces
			Escribir "gana juan "
			partida <- 0
		SiNo
			Si (val2==1 y val1==3) o ( val2==2 y val1==1) o( val2==2 y val1==3) Entonces
				Escribir "gana franco "
				partida <- 0
			fin si
			
		Fin Si
	SiNo
		Limpiar Pantalla 
		Escribir "empate"
	Fin Si
FinAlgoritmo