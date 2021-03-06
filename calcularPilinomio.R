#Calcular polinimio del tipo Ax+B=C
#Solo numeros enteros

calcularPolinomio <- function(Ax, B, C){
  x=0;
  Ax = trunc(Ax);
  B=trunc(B)
  C=trunc(C)
  
  x=(C+(-B))/Ax;
  
  print(sprintf("%ix + %i = %i", Ax,B,C))
  print(paste("x = ",x))
  x
}

p = calcularPolinomio(5, 3, 0)
p = calcularPolinomio(7, 4, 18)
p = calcularPolinomio(1, 1, 1)





