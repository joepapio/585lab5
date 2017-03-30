#'require(tidyverse)

FARSday <- function( data, day){
  data %>% filter(DAY_WEEK == day) %>%
    ggplot(aes(x=HOUR, y=n, color=dd)) +
    geom_point() +
    scale_color_manual(values=c("red", "blue"))
}

