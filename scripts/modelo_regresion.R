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
