# FARSday
Jo Papio,   Chaohui Yuan, Yue Zhang 

This R package filters a subset of the FARS database by the day of the week, then plots the number of accidents by hour and whether or not any of the drivers involved were under the influence of alcohol.

#Code for the function
```r
FARSday <- function( data, day){
  data %>% filter(DAY_WEEK == day) %>%
    ggplot(aes(x=HOUR, y=n, color=dd)) +
    geom_point() +
    scale_color_manual(values=c("red", "blue"))
}
```

An example, for the third day of the week, which is Tuesday:
```r
FARSday( accData, 3)

```
