### calculando p value


# ejemplo con prueba t
t.test(
  x           = smoker,
  y           = nonsmoker,
  alternative = "two.sided",
  mu          = 0,
  var.equal   = TRUE,
  conf.level  = 0.95
)


les <- c(3,18)
AR <- c(5,14)

t.test(x = les,
       y = AR,
       altenative = "two.sided",
       mu = 0,
       var.equal = TRUE,
       conf.level = 0.95)

###

# usando krustal.test

# ejemplo
kruskal.test(n_huevos ~ condicion, data = datos)

condicion <- c("c1", "c2","c3","c4")
valores <- c(3,18,5,14)

df <- data.frame(condicion, valores)

kruskal.test(valores ~ condicion, data = df)

####

# t test con tabla de 2*2

arriba <-  factorial(8)*factorial(32)*factorial(21)*factorial(19)
abajo <- factorial(3)*factorial(5)*factorial(18)*factorial(14)*factorial(40)
arriba/abajo

pruebita <- function(a,b,c,d){
  arriba <- factorial(a+b)*factorial(c+d)*factorial(a+c)*factorial(b+d)
  abajo <- factorial(a)*factorial(b)*factorial(c)*factorial(d)*factorial(a+b+c+d)
  arriba/abajo
}



#############################################
############################################
# con la funcion pruebita se obtiene p value

# disnea les vs ar
pruebita(3,5,18,14)

# fatiga les vs ar
pruebita(7,12,14,17)

# headache les vs ar
pruebita(5,9,16,10)

# artralgias les vs ar
pruebita(4,6,17,13)

# palpitaciones les vs ar
pruebita(6,3,15,16)
