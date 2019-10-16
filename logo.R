# Libraries ---------------------------------------------------------------
library(ggplot2)
library(viridis)
library(hexSticker)
# my font issues were fixed by extrafonts::font_import()
library(extrafont) 

# Palette -----------------------------------------------------------------
# create a palette from viridis
pal = viridis(3, end = 0.8)


# Plot parameters ---------------------------------------------------------
# some parameters for the plot
text_size = 4.5
url_text_size = 1.5
text_color = '#2F4F4F'
background_color = '#F5F5F5'


# Sticker plot ------------------------------------------------------------
# Hex subplot
hex_plot <- ggplot(NULL, aes(x = 0:5)) +
  # plot Weibull distributions with different parameters
  stat_function(fun = dweibull, args = list(shape = 1), color = pal[1], size = 1) +
  stat_function(fun = dweibull, args = list(shape = 2), color = pal[2], size = 1) +
  stat_function(fun = dweibull, args = list(shape = 4), color = pal[3], size = 1) +
  # remove all the plot elements
  theme_void() + 
  theme_transparent()

# Plot hex
hex_sticker <- sticker(hex_plot, package = "R\nUsers\nLeeds", 
        s_x = 1, # plot x pos
        s_y = 1.075, # plot y pos
        s_width = 1.4, # plot width
        s_height = 1.1, # plot hieight
        p_size = text_size, # text size
        p_color = text_color, # text color
        p_x = 1.275, # text x pos
        p_y = 1.15,  # text y pos
        p_family = "mono", # font family
        h_fill = background_color, # hex fill color
        h_color = pal[3], # hex border color
        url = "r-users-leeds.netlify.com", 
        u_size = url_text_size, # url text size
        u_color = "#2F4F4F", # url color
        u_family = "mono", # url font family
        filename = 'rleeds_hex_sticker.png',
        dpi = 480 
        )

# Printing ----------------------------------------------------------------
# https://github.com/rladies/starter-kit/tree/master/stickers
# https://www.stickermule.com/uk
