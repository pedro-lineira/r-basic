
calcularFecha = function(añoInicio, mesInicio, segundosasumar){

  totseg=segundosasumar;
  segHora = 60*60;
  segDia = 24*segHora;


  meses = c(31,28,31,30,31,30,31,31,30,31,30,31);
  
  esBisiesto = function(ano){ano%%4==0}
  
  segundosAno = function(ano){
    segundos=0;
    if(!esBisiesto(ano)){segundos=365*segdia}
    else {segundos=366*segdia};
    segundos  
  }
  
  segundosMes = function(ano, mes){
    dias=meses[mes];
    if(mes==2){
      if(esBisiesto(ano)) {dias=29}
    }
    segundos = dias * segDia;
    segundos
    
  }
  
  ano=anoInicio;
  anoFinal=anoInicio;
  mes=mesInicio;
  mesFinal=mesInicio;
  diaFinal=0;
  horaFinal=0;
  minutoFinal=0;
  segundoFinal=0;
  while(totseg>0){
   
    #Restando años
    segundos=segundosAno(ano);
  
    if ((totseg-segundos)>0){
      totseg=totseg-segundos;
      ano=ano+1;
      anoFinal=ano;
    }
    else { 
      
      segundos=segundosMes(ano, mes);
      
      if (totseg-segundos>0){
        totseg=totseg-segundos;
        mes=mes+1;
        mesFinal=mes;
      }
      else {
        diaFinal=ceiling(totseg/segDia);
        totseg = totseg%%segDia;
        horaFinal=totseg%/%segHora;
        totseg = totseg%%segHora;
        minutoFinal=ceiling(totseg/60);
        segundoFinal=totseg%%60;
        break;
      }
      
    }
    #print(paste("Año: ", anoFinal))  
    
  }
  print(paste("Año: ", anoFinal))
  print(paste("Mes: ", mesFinal)) 
  print(paste("Día: ", diaFinal))
  print(paste("Hora: ", horaFinal)) 
  print(paste("Minuto: ", minutoFinal)) 
  print(paste("Segundo: ", segundoFinal)) 
  
  
  
}

segundosasumar = 250000000
anoInicio = 2018
mesInicio = 1


calcularFecha(anoInicio, mesInicio, segundosasumar)


#7*365*segDia + 2*segDia + 334*segDia + 2*segDia + 12*60*60 + 26*60 + 40
