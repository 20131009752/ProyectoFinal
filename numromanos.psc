Algoritmo sin_titulo
	//recordar que una matriz inicia desde cero 	
	//Existe un ciclo infinito que se debe solucionar
	//implementar funsiones  para optimizar y reducir el codigo
	//////////////////////////////////
	Definir condicionDeCaracter Como Entero//se usa en ciclo mientras para evitar que el usuario ingrese un caracter incorrecto
	Definir cicloDeCondicionuno,cicloDeCondiciondos Como Entero//se usan dentro del ciclo mientras 
	//////////////////////////////////
	Definir primerCiclo,segundoCiclo,tercerCiclo Como Entero//ciclos
	Definir LongitudDeNUmero Como Entero//mide la Longitud de caracteres del numero romano ingresado
	Definir primerResultado,segundoResultado Como Entero //se usan para almacenar los resultados individuales 
	definir posicionUno,posicionDos Como entero//se usan para extraer caracteres
	Definir  numeroRomano,caracterUno,caracterDos Como Caracter//alamcen p
	Definir comparadorUno,comparadorDos Como Entero//comparan el valor individual de los caracteres 
	Definir resultadoFinal Como Entero//salida
	//////////////////////////////////
	Definir equivalenteDecimal Como Entero//matris igual
	Dimension equivalenteDecimal[7]
	equivalenteDecimal[1]=1
	equivalenteDecimal[2]=5
	equivalenteDecimal[3]=10
	equivalenteDecimal[4]=50
	equivalenteDecimal[5]=100
	equivalenteDecimal[6]=500
	equivalenteDecimal[7]=1000
	//////////////////////////////////
	Definir letraRomana Como Caracter//MATRIS LETRA
	Dimension letraRomana[7] 
	letraRomana[1]="I"
	letraRomana[2]="V"
	letraRomana[3]="X"
	letraRomana[4]="L"
	letraRomana[5]="C"
	letraRomana[6]="D"
	letraRomana[7]="M"
	/////////////////////////////////
	//esta sesion se usa para evitar que se ingrese un caracter el cual no esta definido
	Mientras condicionDeCaracter= 0 hacer
		Limpiar Pantalla
	Escribir "Ingrese el Numero Romano "
	leer numeroRomano
	numeroRomano=Mayusculas(numeroRomano)
	LongitudDeNUmero=Longitud(numeroRomano)
	Para cicloDeCondicionuno<-1 Hasta LongitudDeNUmero Con Paso 1 Hacer
		caracterUno=caracterUno+SubCadena(numeroRomano,posicionUno+1,posicionUno+1)
		Para cicloDeCondiciondos<-1 Hasta 7 Con Paso 1 Hacer
			
			si caracterUno=letraRomana[cicloDeCondiciondos] Entonces
				condicionDeCaracter=condicionDeCaracter+1
				 
			FinSi
		Fin Para
		caracterUno=""
	Fin Para
FinMientras

	/////////////////////////////////
	numeroRomano=Mayusculas(numeroRomano)
	LongitudDeNUmero=Longitud(numeroRomano)
	posicionDos=1
	/////////////////////////////////
	Para primerCiclo<-1 Hasta  LongitudDeNUmero Con Paso 1 Hacer
		//esta sección extrae los caracteres individuales del numero romano ingresado
		caracterUno=caracterUno+SubCadena(numeroRomano,posicionUno+1,posicionUno+1)
		caracterDos=caracterDos+Subcadena(numeroRomano,posicionDos+1,posicionDos+1)
		/////////////////////////////////
		Para segundoCiclo<-1 Hasta 7 Con Paso 1 Hacer
			/////////////////////////////////
			//se extrae un carácter para luego compararlo
			Mientras comparadorUno=0 Hacer
				Para tercerCiclo<-1 Hasta 7 Con Paso 1 Hacer
					
					si caracterUno=letraRomana[tercerCiclo] Entonces
						comparadorUno=equivalenteDecimal[tercerCiclo]
						
					FinSi
				FinPara
				
			FinMientras
			/////////////////////////////////
			//se extrae un carácter para luego compararlo
			Mientras comparadorDos=0 Hacer
				Para tercerCiclo<-1 Hasta 7 Con Paso 1 Hacer
					si caracterDos=letraRomana[tercerCiclo] Entonces
						comparadorDos=equivalenteDecimal[tercerCiclo]
						
					FinSi
				FinPara
				comparadorDos=comparadorDos+1
				
			FinMientras
			comparadorDos=comparadorDos-1
			/////////////////////////////////
			//se comparan los caracteres ya que si el primero es menor este se resta de lo contrario se suma 
			si comparadorUno>=comparadorDos Entonces//condicion suma
				si caracterUno=letraRomana[segundoCiclo] Entonces
					primerResultado=primerResultado+equivalenteDecimal[segundoCiclo]
					
				FinSi
			SiNo
				si comparadorUno<comparadorDos Entonces//condicion resta
					si caracterUno=letraRomana[segundoCiclo] Entonces
						segundoResultado=segundoResultado+comparadorUno
						
					FinSi
				FinSi
				
			FinSi	 
			/////////////////////////////////
		FinPara		
		//se limpia las variables con caracteres para asignarles uno nuevo
		caracterUno=""
		caracterDos=""
		//se suma mas uno para tomar los siguientes caracteres a comparar
		posicionUno=posicionUno+1
		posicionDos=posicionDos+1
		//se limpian las variables para asignarles un nuevo valor a comparar
		comparadorUno=0
		comparadorDos=0
	Fin Para
	/////////////////////////////////
	//se restan los resultados de la comparaciones
	resultadoFinal=primerResultado-segundoResultado
	/////////////////////////////////
	Mostrar numeroRomano " ES igual a " resultadoFinal
	/////////////////////////////////
FinAlgoritmo






