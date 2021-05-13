install.packages("ggplot2")

# CARGAR LIBRERÍA PARA GRAFICAR
library(ggplot2)

# BORRAR TODOS LOS 
rm(list = ls())
install.packages("gapminder")

# CARGAR LIBRERÍA CON DATOS
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
