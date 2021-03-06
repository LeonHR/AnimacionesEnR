# CARGAR LIBRER�A PARA GRAFICAR
library(ggplot2)

# BORRAR TODAS LAS VARIABLES EXISTENTES 
rm(list = ls())

# CARGAR LIBRER�A CON DATOS
library(gapminder)

# ASIGNAR A LA VARIABLE DATOS LA TABLA DE GAPMINDER
datos <- gapminder

# CREAR GR�FICO
grafico <- ggplot(
            datos, 
            aes(x = gdpPercap, y = lifeExp, colour = continent)
            ) + geom_point(aes(size=pop), alpha=0.8) +
            theme(legend.position = "bottom") + guides(size = "none") +
            labs(x = "PIB per capita", y = "Esperanza de Vida", col = "")

# MOSTRAR GR�FICO
grafico

# CARGAR LIBRER[IAS PARA ANIMAR LA GRAFICA
library(gganimate)
library(gifski)

grafico <- grafico + 
            transition_time(year) +
            labs(title = "A�o: {frame_time}")

grafico

animate(grafico, renderer = gifski_renderer("animacion.gif"))
