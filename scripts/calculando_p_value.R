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


les <- c(4,17)
AR <- c(6,13)

t.test(x = les,
       y = AR,
       altenative = "two.sided",
       mu = 0,
       var.equal = TRUE,
       conf.level = 0.95)
