Algoritmo sin_titulo
	//////////////////////////////////
	Definir n1,n2,n3,n4 Como Entero//ciclos
	Definir r1,r2,p1,p2,pru Como entero//contador
	Definir  pa, pa1,pa2 Como Caracter//alamcen p
	Definir c1,c2 Como Entero//comparador 
	Definir rt1 Como Entero//salida
	//////////////////////////////////
	Definir nr Como Entero//matris igual
	Dimension nr[7]
	nr[1]=1
	nr[2]=5
	nr[3]=10
	nr[4]=50
	nr[5]=100
	nr[6]=500
	nr[7]=1000
	//////////////////////////////////
	Definir Lr Como Caracter//MATRIS LETRA
	Dimension Lr[7] 
	Lr[1]="I"
	Lr[2]="V"
	Lr[3]="X"
	Lr[4]="L"
	Lr[5]="C"
	Lr[6]="D"
	Lr[7]="M"
	/////////////////////////////////
	Escribir "Ingrese el Numero Romano "
	leer pa
	pa=Mayusculas(pa)
	n3=Longitud(pa)
	p2=1
	/////////////////////////////////
	Para n2<-1 Hasta n3 Con Paso 1 Hacer
		pa1=pa1+SubCadena(pa,p1+1,p1+1)
		pa2=pa2+Subcadena(pa,p2+1,p2+1)
		/////////////////////////////////
		Para n1<-1 Hasta 7 Con Paso 1 Hacer
			/////////////////////////////////
			Mientras c1=0 Hacer
				Para n4<-1 Hasta 7 Con Paso 1 Hacer
					
					si pa1=lr[n4] Entonces
						c1=nr[n4]
						
					FinSi
				FinPara
				
			FinMientras
			/////////////////////////////////
			Mientras c2=0 Hacer
				Para n4<-1 Hasta 7 Con Paso 1 Hacer
					si pa2=lr[n4] Entonces
						c2=nr[n4]
						
					FinSi
				FinPara
				c2=c2+1
				
			FinMientras
			c2=c2-1
			/////////////////////////////////
			si c1>=c2 Entonces//condicion suma
				si pa1=lr[n1] Entonces
					r1=r1+nr[n1]
					
				FinSi
			SiNo
				si c1<c2 Entonces//condicion resta
					si pa1=lr[n1] Entonces
						r2=r2+c1
						
					FinSi
				FinSi
				
			FinSi	
			/////////////////////////////////
		FinPara		
		pa1=""
		pa2=""
		p1=p1+1
		p2=p2+1
		c1=0
		c2=0
	Fin Para
	/////////////////////////////////
	rt1=r1-r2
	/////////////////////////////////
	Mostrar pa " ES igual a " rt1
	/////////////////////////////////
FinAlgoritmo


