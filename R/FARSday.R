#' Plot the number of accidents against hours for drunk driver and not drunk driver group separately 
#' 
#' @param data accData data set .
#' @param day A number from 1 to 7.
#' @export
#' @return A figure of number of accidents against hours in day \code{y}.
#' @examples
#' FARSday(accData, 2)
#' FARSday(accData, 7)

FARSday <- function( data, day){
  data %>% dplyr::filter(DAY_WEEK == day) %>%
    ggplot2::ggplot(aes(x=HOUR, y=n, color=dd)) +
    geom_point() +
    scale_color_manual(values=c("red", "blue"))
}
