library(ggplot2)

my_regression_plot <- ggplot(my_data, aes(x=independent_variable, y=depedent_variable, colour=variable_for-different_lines)) +
  geom_smooth(method = "lm", se = TRUE) + #fits a linear regression line with standard error (set se = FALSE to remove this)
  ylab("Dependent variable name") +
  xlab("Independent variable name") +
  coord_cartesian(ylim=c(0, 6)) + #set the limits of your y axis in this case it is 0 to 6
  scale_y_continuous(breaks=seq(0, 6, 1)) + #specify the increase of the y axis in this case go from 0 to 6 with steps of 1
  scale_x_continuous(breaks=seq(1, 8, 1)) + #same as above but for the x axis
  theme_bw() #sets a black and white background

my_regression_plot #view plot

ggsave("my_regression_plot.png", plot = my_regression_plot, dpi = 600) # save plot the first argument is the name of the file you want to save it as, next is the plot name in r, and finally the dpi is a good quality image size