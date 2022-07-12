### grafos para forest plot


# forest plot les vs ar
forest_les_ar <- read_xlsx("data/forest_les_ar.xlsx")


ggplot(forest_les_ar, aes(y = forcats::fct_rev(f = forcats::fct_inorder(f = secuela)))) +
  geom_vline(xintercept = 1, linetype = "dashed") +
  geom_point(mapping = aes(x = riesgo_relativo, color = "orange")) +
  geom_errorbarh(mapping = aes(xmin = bajo,
                               xmax = alto)) +
  theme_light() +
  scale_x_discrete(limits=c(0,1,2,3,4,5,6,7,8,9,10,11)) +
  labs(x = "Relative risk",
       y = "") +
  theme(legend.position = "none") +
  labs(y = NULL)

# forest plot les vs miscelaneos

forest_les_misc <- read_xlsx("data/forest_les_misc.xlsx")


ggplot(forest_les_misc, aes(y = forcats::fct_rev(f = forcats::fct_inorder(f = secuela)))) +
  geom_vline(xintercept = 1, linetype = "dashed") +
  geom_point(mapping = aes(x = riesgo_relativo, color = "orange")) +
  geom_errorbarh(mapping = aes(xmin = bajo,
                               xmax = alto)) +
  theme_light() +
  scale_x_discrete(limits=c(0,1,2,3,4,5,6,7,8,9,10,11)) +
  labs(x = "Relative risk",
       y = "") +
  theme(legend.position = "none") +
  labs(y = NULL)
