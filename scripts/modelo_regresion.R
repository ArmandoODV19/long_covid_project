### modelo de regresion logistico binario

les_ar <-read_xlsx("data/les_ar_data_for_binominal_model.xlsx")

# cambiando elementos a tipo factor
les_ar$disease <- as.factor(les_ar$disease)
les_ar$sex <- as.factor(les_ar$sex)
les_ar$smell_disorders <- as.factor(les_ar$smell_disorders)
les_ar$fatigue <- as.factor(les_ar$fatigue)
les_ar$myalgias <- as.factor(les_ar$myalgias)
les_ar$arthralgias <- as.factor(les_ar$arthralgias)
les_ar$palpitations <- as.factor(les_ar$palpitations)
les_ar$taste_disorders <- as.factor(les_ar$taste_disorders)
les_ar$skin_lesions <- as.factor(les_ar$skin_lesions)
les_ar$headache <- as.factor(les_ar$headache)
les_ar$depression <- as.factor(les_ar$depression)
les_ar$hair_loss <- as.factor(les_ar$hair_loss)
les_ar$dyspnoea <- as.factor(les_ar$dyspnoea)
les_ar$memory_alterations <- as.factor(les_ar$memory_alterations)


# realizando modelo, tomando disease como variable independiente

modelos_les_ar <- glm(disease~age+sex+smell_disorders+fatigue+myalgias+arthralgias+palpitations+taste_disorders+skin_lesions+headache+depression+hair_loss+dyspnoea+memory_alterations,
                      family = binomial, data = les_ar)


# resumen modelo

summary(modelos_les_ar)

# generando coeficientes

coef(modelos_les_ar)
exp(coef(modelos_les_ar))
exp(confint(modelos_les_ar))
coeficientes_modelo_les_ar <- cbind(coef(modelos_les_ar),odds_ratio=exp(coef(modelos_les_ar)),exp(confint(modelos_les_ar)))


#####
# modelo les vs miscelaneos

# cargando datos

les_misc <-read_xlsx("data/les_misc_data_for_binominal_model.xlsx")

# cambiando elementos a tipo factor
les_misc$disease <- as.factor(les_misc$disease)
les_misc$sex <- as.factor(les_misc$sex)
les_misc$smell_disorders <- as.factor(les_misc$smell_disorders)
les_misc$fatigue <- as.factor(les_misc$fatigue)
les_misc$myalgias <- as.factor(les_misc$myalgias)
les_misc$arthralgias <- as.factor(les_misc$arthralgias)
les_misc$palpitations <- as.factor(les_misc$palpitations)
les_misc$taste_disorders <- as.factor(les_misc$taste_disorders)
les_misc$skin_lesions <- as.factor(les_misc$skin_lesions)
les_misc$headache <- as.factor(les_misc$headache)
les_misc$depression <- as.factor(les_misc$depression)
les_misc$hair_loss <- as.factor(les_misc$hair_loss)
les_misc$dyspnoea <- as.factor(les_misc$dyspnoea)
les_misc$memory_alterations <- as.factor(les_misc$memory_alterations)

# realizando modelo, tomando disease como variable independiente

modelos_les_misc <- glm(disease~age+sex+smell_disorders+fatigue+myalgias+arthralgias+palpitations+taste_disorders+skin_lesions+headache+depression+hair_loss+dyspnoea+memory_alterations,
                      family = binomial, data = les_misc)


# resumen modelo

summary(modelos_les_misc)

# generando coeficientes

coef(modelos_les_misc)
exp(coef(modelos_les_misc))
exp(confint(modelos_les_misc))
coeficientes_modelo_les_misc <- cbind(coef(modelos_les_misc),odds_ratio=exp(coef(modelos_les_misc)),exp(confint(modelos_les_misc)))
