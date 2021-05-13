install.packages("ggplot2")
library(ggplot2)
rm(list = ls())
install.packages("gapminder")
library(gapminder)

# ASIGNAR A LA VARIABLE DATOS LA TABLA DE GAPMINDER
datos <- gapminder

# CREAR GRÁFICO
grafico <- ggplot(
            datos, 
            aes(x = gdpPercap, y = lifeExp, colour = continent)
            ) + geom_point()

# MOSTRAR GRÁFICO
grafico
