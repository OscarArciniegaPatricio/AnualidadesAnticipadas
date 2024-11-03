# Valor Futuro con Anualidad, Tasa y Número de Pagos
ValorFuturo = function(A, r, n) {
  resultado1 = A * (((1 + r)^n - 1) / r)
  return(resultado1)
}

# Anualidad conociendo el Valor Futuro, Tasa y Número de Pagos
AnualidadVF = function(VF, r, n) {
  resultado2 = VF / (((1 + r)^n - 1) / r)
  return(resultado2)
}

# Número de Pagos o Plazo conociendo el Valor Futuro, Anualidad y Tasa
PlazoVF = function(A, VF, r) {
  resultado3 = log(((VF * r) / A) + 1) / log(1 + r)
  return(resultado3)
}

# Tasa del Periodo conociendo el Valor Futuro, Número de Pagos y Anualidad
BiseccionTasaVF = function(VF, A, n, tol=1e-6, max_iter=1000) {
  a = 0  # Límite inferior de la tasa
  b = 1  # Límite superior de la tasa
  
  for (i in 1:max_iter) {
    r = (a + b) / 2  # Punto medio
    f_r = A * (((1 + r)^n - 1) / r) - VF  # Evaluar la función en r
    
    if (abs(f_r) < tol) {
      return(r)  # Si la solución está dentro de la tolerancia, devolver r
    }
    
    # Decidir en qué intervalo continuar
    if (f_r > 0) {
      b = r
    } else {
      a = r
    }
  }
  stop("No se encontró una solución en el número máximo de iteraciones.")
}

# Valor Actual con Anualidad, Tasa y Número de Pagos
ValorActual = function(A, r, n) {
  resultado5 = A * ((1 - (1 + r)^(-n)) / r)
  return(resultado5)
}

# Anualidad conociendo el Valor Actual, Tasa y Número de Pagos
AnualidadVA = function(VA, r, n) {
  resultado6 = VA * (r / (1 - (1 + r)^(-n)))
  return(resultado6)
}

# Número de Pagos o Plazo conociendo el Valor Actual, Anualidad y Tasa
PlazoVA = function(VA, A, r) {
  resultado7 = log(A / (A - VA * r)) / log(1 + r)
  return(resultado7)
}

# Tasa del Periodo conociendo el Valor Actual, Número de Pagos y Anualidad
NewtonRaphsonTasaVA = function(VA, A, n, tol=1e-6, max_iter=1000) {
  r = 0.1 
  
  f_r = function(r) {
    return(A * ((1 - (1 + r)^(-n)) / r) - VA)
  }
  
  f_r_prime = function(r) {
    return(A * ((n * (1 + r)^(-n - 1)) / r - (1 - (1 + r)^(-n)) / (r^2)))
  }
  
  for (i in 1:max_iter) {
    r_next = r - f_r(r) / f_r_prime(r)  # Newton-Raphson formula
    
    if (abs(r_next - r) < tol) {
      return(r_next)  # Convergencia alcanzada
    }
    
    r = r_next  # Actualizar el valor de r
  }
  
  stop("No se encontró una solución en el número máximo de iteraciones.")
}

