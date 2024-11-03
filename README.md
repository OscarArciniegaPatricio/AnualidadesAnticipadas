# AnualidadesAnticipadas

# Anualidades
Con el siguiente código puede usted cargar las funciones de anualidades:
```{r}
source("https://raw.githubusercontent.com/OscarArciniegaPatricio/Anualidades/refs/heads/main/FormulasAnualidad2.R")
```
## Ejemplos de Anualidades Vencidas

### Cálculo del valor futuro
Un inversionista realiza un pago mensual de $1,200 al final de cada mes durante 5 años en una anualidad vencida que paga una tasa de interés del 6% anual, compuesta mensualmente. ¿Cuál es el valor futuro de esta inversión?
$A$=1200
$t$=60
$i$=0.06
$r$=0.005
```{r}
# Creamos objetos con valores de entrada:
Anualidad=1200
tasa=0.005
tiempo=60

# Calculamos el valor futuro
ValorFuturoAqui=ValorFuturo(A=Anualidad,r=tasa,n=tiempo)

# Imprimo el resultado:
ValorFuturoAqui
```

### Cálculo de Anualidad
Una persona desea tener $150,000 dentro de 8 años, realizando pagos quincenales al final de cada quincena a una tasa de interés del 5% anual, compuesta quincenalmente. ¿Cuánto debe ser el monto de cada pago quincenal si la anualidad es vencida?
$VF$=150000
$t$=192
$i$=0.05
$r$=0.002083
```{r}
# Creamos objetos con valores de entrada:
ValorFinal=150000
tasa=0.002083
tiempo=192

# Calculamos el valor futuro
AnualidadAqui=Anualidad(VF=ValorFinal,r=tasa,t=tiempo)

# Imprimo el resultado:
AnualidadAqui
```
### Cálculo del número de pagos o plazo
Un inversionista quiere saber cuántos meses necesitará invertir $800 mensuales a una tasa de 8% anual, compuesta mensualmente, para alcanzar un valor futuro de $100,000. 
$VF$=100000
$A$=800
$i$=0.08
$r$=0.006667
```{r}
# Creamos objetos con valores de entrada:
ValorFinal=100000
Anualidad=800
tasa=0.006667

# Calculamos el tiempo
TiempoAqui=Tiempo(A=Anualidad,VF=ValorFinal,r=tasa)

# Imprimo el resultado:
TiempoAqui
```
### Cálculo de la tasa del periodo
Un inversionista desea saber cuál es la tasa de interés mensual a la que debe invertir $1,500 al final de cada mes, durante 10 años, para obtener un valor futuro de $250,000. 
$VF$=250000
$A$=1500
$n$=120
```{r}
# Creamos objetos con valores de entrada:
ValorFinal=250000
Anualidad=1500
tiempo=120

# Calculamos la tasa usando bisección o Newton-Raphson
TasaAqui=BiseccionTasaVF(VF=ValorFinal,A=Anualidad,n=tiempo)

# Imprimo el resultado:
TasaAqui
```
## Ejemplo de anualidades anticipadas
### Cálculo del valor actual
Un inversionista quiere saber cuál es el valor actual de una serie de pagos trimestrales de $5,000, durante 15 años, a una tasa de 6% anual compuesta trimestralmente. 
$A$=5000
$n$=60
$i$=0.06
```{r}
# Creamos objetos con valores de entrada:
Anualidad=5000
tasa=0.015
tiempo=60
# Calculamos el valor actual
ValorActualAqui=ValorActual(A=Anualidad,r=tasa,n=tiempo)

# Imprimo el resultado:
ValorActualAqui

$r$=0.015
```
### Cálculo de la anualidad
Un inversionista ha recibido $50,000 y desea invertirlo para recibir pagos anuales por los próximos 20 años a una tasa de interés del 7% anual. ¿Cuánto recibiría anualmente? 
$VA$=50000
$n$=20
$i$=0.07
```{r}
# Creamos objetos con valores de entrada:
ValorActual=50000
tasa=0.07
tiempo=20

# Calculamos la anualidad
AnualidadAqui2=AnualidadVA(VA=ValorActual,r=tasa,n=tiempo)

# Imprimo el resultado:
AnualidadAqui2

```
### Cálculo de número de pagos o plazo
Un inversionista quiere saber cuántos años tardará en agotar una inversión de $200,000, si recibe pagos trimestrales de $6,000, a una tasa del 5% anual compuesta trimestralmente. 
$VA$=200000
$A$=6000
$i$=0.05
$r$=0.0125
```{r}
# Creamos objetos con valores de entrada:
ValorActual=200000
Anualidad=6000
tasa=0.0125

# Calculamos el tiempo
TiempoAqui2=TiempoVA(A=Anualidad,VA=ValorActual,r=tasa)

# Imprimo el resultado:
TiempoAqui2

```


### Cálculo de la tasa de periodo
Un inversionista tiene $50,000 y quiere recibir pagos mensuales de $1,000 por los próximos 5 años. ¿Qué tasa de interés mensual recibiría? 
$VA$=50000
$A$=1000
$n$=60
```{r}
# Creamos objetos con valores de entrada:
ValorActual=50000
Anualidad=1000
tiempo=60

# Calculamos la tasa usando bisección o Newton-Raphson
TasaAqui1=NewtonRaphsonTasaVA(VA=ValorActual,A=Anualidad,n=tiempo)

# Imprimo el resultado:
TasaAqui1
```
