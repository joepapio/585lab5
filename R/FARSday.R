#'library(tidyverse)
#' Filter a dataset by day of the week.
#' 
#' @param data A dataset.
#' @param day An integer value between 1 and 7, indicating day of the week
#' @export
#' @return A plot number of accidentws by hour for a given \code{day} of the week, split by whether or not one or more drunk driver was involved. s
#' FARSday(accData, 3)

FARSday <- function( data, day){
  data %>% filter(DAY_WEEK == day) %>%
    ggplot(aes(x=HOUR, y=n, color=dd)) +
    geom_point() +
    scale_color_manual(values=c("red", "blue"))
}

