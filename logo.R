# libraries
library(ggplot2)
library(viridis)

# create a palette from viridis
pal = viridis(3, end = 0.8)

# some parameters for the plot
text_size = 16
text_color = '#2F4F4F'
line_size = 1.75
background_color = '#F5F5F5'

ggplot(NULL, aes(x = 0:5)) +
  # plot Weibull distributions with different parameters
  stat_function(fun = dweibull, args = list(shape = 1), color = pal[1], size = line_size) +
  stat_function(fun = dweibull, args = list(shape = 2), color = pal[2], size = line_size) +
  stat_function(fun = dweibull, args = list(shape = 4), color = pal[3], size = line_size) +
  # add the text
  annotate("text", x = 3.25, y = 1.25, label = "R", family = "mono", size = text_size, color = text_color) +
  annotate("text", x = 3.25, y = 1, label = "Users", family = "mono", size = text_size, color = text_color) +
  annotate("text", x = 3.25, y = 0.75, label = "Leeds", family = "mono", size = text_size, color = text_color) +
  # remove all the plot elements
  theme_void() +
  # change the background color and margins
  theme(plot.background = element_rect(fill = background_color),
        plot.margin = unit(c(1.5, 1.5, 1.5, 1.5), "cm"))

# save to disk
ggsave("logo.png", width = 5, height = 5, dpi = 'retina')
