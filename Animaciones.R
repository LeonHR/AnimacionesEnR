# CARGAR LIBRERÍA PARA GRAFICAR
library(ggplot2)

# BORRAR TODAS LAS VARIABLES EXISTENTES 
rm(list = ls())

# CARGAR LIBRERÍA CON DATOS
library(gapminder)

# ASIGNAR A LA VARIABLE DATOS LA TABLA DE GAPMINDER
datos <- gapminder

# CREAR GRÁFICO
grafico <- ggplot(
            datos, 
            aes(x = gdpPercap, y = lifeExp, colour = continent)
            ) + geom_point(aes(size=pop), alpha=0.8) +
            theme(legend.position = "bottom") + guides(size = "none") +
            labs(x = "PIB per capita", y = "Esperanza de Vida", col = "")

# MOSTRAR GRÁFICO
grafico

# CARGAR LIBRER[IAS PARA ANIMAR LA GRAFICA
library(gganimate)
library(gifski)

grafico <- grafico + 
            transition_time(year) +
            labs(title = "Año: {frame_time}")

grafico
