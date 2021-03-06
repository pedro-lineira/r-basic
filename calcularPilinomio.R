#Calcular polinimio del tipo Ax+B=0
#Solo numeros enteros

calcularPolinomio <- function(Ax, B){
  x=0;
  Ax = trunc(Ax);
  B=trunc(B)
  x=(-B)/Ax;
  print(sprintf("%ix + %i = 0", Ax,B))
  print(sprintf("x = %f", x))
  x
}

calcularPolinomio(4, 0.3)

2+2



