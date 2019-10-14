# Libraries ---------------------------------------------------------------
library(ggplot2)
library(viridis)
library(hexSticker)

# Palette -----------------------------------------------------------------
# create a palette from viridis
pal = viridis(3, end = 0.8)


# Plot parameters ---------------------------------------------------------
# some parameters for the plot
text_size = 16
url_text_size = 3
text_color = '#2F4F4F'
# line_size = 1.75
background_color = '#F5F5F5'


# Sticker plot ------------------------------------------------------------
# Create original plot
# ggplot(NULL, aes(x = 0:5)) +
#   # plot Weibull distributions with different parameters
#   stat_function(fun = dweibull, args = list(shape = 1), color = pal[1], size = line_size) +
#   stat_function(fun = dweibull, args = list(shape = 2), color = pal[2], size = line_size) +
#   stat_function(fun = dweibull, args = list(shape = 4), color = pal[3], size = line_size) +
#   # add the text
#   annotate("text", x = 3.25, y = 1.25, label = "R", family = "mono", size = text_size, color = text_color) +
#   annotate("text", x = 3.25, y = 1, label = "Users", family = "mono", size = text_size, color = text_color) +
#   annotate("text", x = 3.25, y = 0.75, label = "Leeds", family = "mono", size = text_size, color = text_color) +
#   # remove all the plot elements
#   theme_void() +
#   # change the background color and margins
#   theme(plot.background = element_rect(fill = background_color),
#         plot.margin = unit(c(1.5, 1.5, 1.5, 1.5), "cm")) 
# 
# ggsave("logo.png", width = 5, height = 5, dpi = 'retina')

# Hex subplot
hex_plot <- ggplot(NULL, aes(x = 0:5)) +
  # plot Weibull distributions with different parameters
  stat_function(fun = dweibull, args = list(shape = 1), color = pal[1], size = 1) +
  stat_function(fun = dweibull, args = list(shape = 2), color = pal[2], size = 1) +
  stat_function(fun = dweibull, args = list(shape = 4), color = pal[3], size = 1) +
  # add the text
  # remove all the plot elements
  theme_void() + 
  theme_transparent()

# Plot hex
sticker(hex_plot, package = "R Users Leeds", 
        # Modify plot_new par
        s_x = 1, 
        s_y = 0.85, 
        s_width = 1.35, 
        s_height = 1, 
        # Modify package name par
        p_size = text_size, 
        p_color = text_color, 
        p_y = 1.45, 
        p_family = "Aller_Lt",
        # Modify hexagon par
        h_fill = background_color,
        h_color = pal[3],
        # Modify url par
        url = "r-users-leeds.netlify.com",
        u_size = url_text_size, 
        u_color = "#2F4F4F",
        u_family = "Aller_Lt",
        # Output par
        dpi = "retina", filename = "rleeds_hex_logo.png")


# Printing ----------------------------------------------------------------
# https://github.com/rladies/starter-kit/tree/master/stickers
# https://www.stickermule.com/uk
