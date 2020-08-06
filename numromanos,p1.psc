Algoritmo sin_titulo
	Definir pa,pa1 Como Caracter
	Definir n1,n2,n3,i Como Entero
	Escribir "ingrese el numero "
	leer pa
	pa=Mayusculas(pa)
	n1=Longitud(pa)
	Para i<-1 Hasta n1 Con Paso 1 Hacer
		pa1=pa1+SubCadena(pa,n2+1,n2+1)
		si pa1 = "I" Entonces
			n3=n3+1
			SiNo
				si pa1 = "V" Entonces
					n3=n3+5
				SiNo
					si pa1 = "X" Entonces
						n3=n3+10
					SiNo
						si pa1 = "L" Entonces
							n3=n3+50
						SiNo
							si pa1 = "C" Entonces
								n3=n3+100
							SiNo
								si pa1 = "D" Entonces
									n3=n3+500
								SiNo
									si pa1 = "M" Entonces
										n3=n3+1000
									FinSi
									
								finsi
							finsi
						finsi
					finsi
				finsi
			finsi
			
		pa1=""
		n2=n2+1
	Fin Para
	Escribir n3
FinAlgoritmo

