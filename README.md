
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rcplot

The goal of rcplot is to implement a default design to be used by
registers linked to Registercentrum with figures produced by ggplot2.
Plot functions are used for the annual reports, R-shiny web
presentations and more.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("registercentrum/rcplot")
```

## Examples

Here are some example plots but please see the individual manual pages
for a comprehensive list.

``` r
library(rcplot)
set.seed(123)

# Create some data
df <- data.frame(
  age = rpois(100000, 65),
  gender = sample(c('Woman', 'Woman', 'Man'), size = 100000, replace = TRUE))

# Age pyramid
age_pyramid(df, age_var = 'age', fill_var = 'gender',
            man_level = 'Man', title = "This is an age pyramid")
```

<img src="man/figures/README-example-1.png" width="100%" />

``` r
# Bar plot
bar_plot(df = ggplot2::diamonds, x_var = 'color',
         fill_var = 'cut', y_breaks = 2)
```

<img src="man/figures/README-example-2.png" width="100%" />

``` r
# KM-plot with 2 levels
survfit_obj <- survival::survfit(
  survival::Surv(time/365.24, status) ~ sex,
  data = survival::colon
)

km_plot(survfit_obj, y_lim = c(0,100), y_breaks = 10, x_lim = c(0,9))
```

<img src="man/figures/README-example-3.png" width="100%" />

``` r
# Line plot
line_plot(df = ggplot2::diamonds, x_var = 'cut', color_var = 'color', y_breaks = 2)
```

<img src="man/figures/README-example-4.png" width="100%" />

``` r
# Map figure of Counties, Sweden
region_coords <- rcplot::counties
region_coords[["var"]] <- factor(
  sample(c("Sämst", "Dålig", "Bra", "Bäst"),
         size = nrow(region_coords), replace = TRUE),
  ordered = TRUE,
  levels = c("Sämst", "Dålig", "Bra", "Bäst")
)

map_plot(
  df = region_coords,
  fill_var = "var",
  fill_colors = rc_colors(n = 4, type = "RYG")
)
```

<img src="man/figures/README-example-5.png" width="100%" />

``` r
# Map figure of Västra Götalandsregionen
vgregion <- dplyr::filter(rcplot::municipalities, RegionID == "14")

vgregion[["var"]] <- factor(
  sample(c("Sämst", "Dålig", "Bra", "Bäst"),
         size = nrow(vgregion), replace = TRUE),
  ordered = TRUE,
  levels = c("Sämst", "Dålig", "Bra", "Bäst")
)

map_plot(
  df = vgregion,
  fill_var = "var",
  fill_colors = rc_colors(n = 4, type = "RYG")
)
```

<img src="man/figures/README-example-6.png" width="100%" />
