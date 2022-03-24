#' Data set used for example purposes (see examples and description in
#' swe_landsting)
#'
#' @format A data frame with 9 rows and 3 variables. The negligible variables
#'   have been removed from the original data set:
#'   \describe{
#'     \item{NAME_1}{name of county, character}
#'     \item{long}{longitude, numeric}
#'     \item{lat}{latitude, numeric}
#'   }
#'
#' @examples
#'
#' # Example on how to make map of Sweden using ggplot2.
#' # Note that coord_map() is essential for the map to be in actual scale.
#'
#' ggplot2::ggplot(
#'   data = swe_coords_county,
#'   ggplot2::aes(x=long, y=lat, group = group)
#' ) +
#' ggplot2::geom_polygon(color = "white", size = 0, fill = "grey")  +
#' ggplot2::geom_point(
#'   data = cnames1,
#'   ggplot2::aes(x = long, y = lat, group = NAME_1, shape = NAME_1),
#'   size = 6*0.352777778,
#'   color = "black"
#' ) +
#' ggplot2::scale_shape_manual(
#'   values = as.character(1:9),
#'   guide = ggplot2::guide_legend(ncol = 1)
#' ) +
#' ggplot2::geom_text(
#'   data = cnames2,
#'   ggplot2::aes(x = long, y = lat, group = NAME_1,
#'   label = as.character(NAME_1)),
#'   size = 6*0.352777778,
#'   color = "black",
#'   hjust = 0.5
#' ) +
#' ggplot2::coord_map() +
#' ggplot2::theme_minimal() +
#' ggplot2::xlab("") +
#' ggplot2::ylab("") +
#' ggplot2::theme(
#'   plot.title           = ggplot2::element_blank(),
#'   axis.text            = ggplot2::element_blank(),
#'   axis.title.x         = ggplot2::element_text(size = 8, color = "black"),
#'   axis.title.y         = ggplot2::element_text(size = 8, color = "black"),
#'   panel.grid           = ggplot2::element_blank(),
#'   panel.background     = ggplot2::element_blank(),
#'   axis.ticks           = ggplot2::element_blank(),
#'   legend.text          = ggplot2::element_text(size = 6),
#'   legend.title         = ggplot2::element_blank(),
#'   legend.key.height    = ggplot2::unit(6, "pt"),
#'   legend.key.width     = ggplot2::unit(6, "pt"),
#'   legend.position      = c(-0.13,1),
#'   legend.justification = c(0,1),
#'   plot.margin          = ggplot2::margin(0,0,0,0, unit = "cm")
#' )
#'
#' @name county_names
"cnames1"

#' Data set used for example purposes
#' (see examples and description in swe_landsting)
#'
#' @format A data frame with 12 rows and 3 variables.
#'   The negligible variables have been removed from the original data set:
#'   \describe{
#'     \item{NAME_1}{name of county, character}
#'     \item{long}{longitude, numeric}
#'     \item{lat}{latitude, numeric}
#'   }
#'
#' @examples
#'
#' # Example on how to make map of Sweden using ggplot2.
#' # Note that coord_map() is essential for the map to be in actual scale.
#'
#' ggplot2::ggplot(
#'   data = swe_coords_county,
#'   ggplot2::aes(x=long, y=lat, group = group)
#' ) +
#' ggplot2::geom_polygon(
#'   color = "white",
#'   size = 0,
#'   fill = "grey"
#' ) +
#' ggplot2::geom_point(
#'   data = cnames1,
#'   ggplot2::aes(x = long, y = lat, group = NAME_1, shape = NAME_1),
#'   size = 6 * 0.352777778,
#'   color = "black"
#' ) +
#' ggplot2::scale_shape_manual(
#'   values = as.character(1:9),
#'   guide = ggplot2::guide_legend(ncol = 1)
#' ) +
#' ggplot2::geom_text(
#'   data = cnames2,
#'   ggplot2::aes(x = long, y = lat, group = NAME_1, label = as.character(NAME_1)),
#'   size = 6 * 0.352777778,
#'   color = "black",
#'   hjust = 0.5
#' ) +
#' ggplot2::coord_map() +
#' ggplot2::theme_minimal() +
#' ggplot2::xlab("") +
#' ggplot2::ylab("") +
#' ggplot2::theme(
#'   plot.title           = ggplot2::element_blank(),
#'   axis.text            = ggplot2::element_blank(),
#'   axis.title.x         = ggplot2::element_text(size = 8, color = "black"),
#'   axis.title.y         = ggplot2::element_text(size = 8, color = "black"),
#'   panel.grid           = ggplot2::element_blank(),
#'   panel.background     = ggplot2::element_blank(),
#'   axis.ticks           = ggplot2::element_blank(),
#'   legend.text          = ggplot2::element_text(size = 6),
#'   legend.title         = ggplot2::element_blank(),
#'   legend.key.height    = ggplot2::unit(6, "pt"),
#'   legend.key.width     = ggplot2::unit(6, "pt"),
#'   legend.position      = c(-0.13,1),
#'   legend.justification = c(0,1),
#'   plot.margin          = ggplot2::margin(0,0,0,0, unit = "cm")
#' )
#'
#'
#' @name county_names
"cnames2"

#' Data set used to translate ID code to name
#'
#'
#' @format A data frame with 311 rows and 3 variables:
#'   \describe{
#'     \item{ColumnName}{name of variable, character}
#'     \item{ValueCode}{ID, character}
#'     \item{ValueName}{Name, character}
#'   }
#'
#' @examples
#'
#' # Example on how to add Region names to coordinates map data
#'
#' region_names <- dplyr::filter(swe_value_labels, ColumnName == "Region")
#'
#' region_names <- dplyr::select(region_names, Region = ValueCode, RegionName = ValueName)
#'
#' df <- dplyr::left_join(
#'   swe_coords_municipality,
#'   region_names,
#'   by = c("Region")
#' )
#'
#' @name county_names
"swe_value_labels"

#' Sweden map data set with township included, compressed version
#'
#'
#' @format A data frame with 11488 rows and 9 variables. This is a filtered
#'   version of swe_kommuner_allpoints where all points with piece equal to "3"
#'   or larger are removed (small details) and only every thirtieth point being
#'   used (see examples):
#'   \describe{
#'     \item{long}{longitude, numeric}
#'     \item{lat}{latitude, numeric}
#'     \item{order}{specifies the order for each point, integer}
#'     \item{piece}{"1" for the most essential, "2" and more for detailed points, factor}
#'     \item{group}{Each region or island in the map is a polygon where each level in this variable is a polygon, factor}
#'     \item{Region}{id of county, integer}
#'     \item{Kommun}{id of township, integer}
#'   }
#'
#' @examples
#'
#' # Example on how to make map of Sweden using ggplot2.
#' # Note that coord_map() is essential for the map to be in actual scale.
#'
#' ggplot2::ggplot(data = swe_coords_municipality, ggplot2::aes(x=long, y=lat, group = group)) +
#'   ggplot2::geom_polygon(color = "white", size = 0, fill = "blue")  +
#'   ggplot2::coord_map() +
#'   ggplot2::theme_minimal()
#'
#' @name sweden_map
"swe_coords_municipality"

#' Sweden map data set with county included, compressed version
#'
#'
#' @format A data frame with 7,791 rows and 19 variables. This is a filtered
#'   version of swe_landsting_allpoints where all points with piece equal to "3"
#'   or larger are removed (small details) and only every thirtieth point being
#'   used (see examples). Also some example variables are included for example
#'   purposes, calculated for 2016 annual report:
#'   \describe{
#'     \item{long  }{longitude, numeric}
#'     \item{lat   }{latitude, numeric}
#'     \item{order }{specifies the order for each point, integer}
#'     \item{piece }{"1" for the most essential, "2" and more for detailed points (Öland, Orust, and Tjörn included in "2"), factor}
#'     \item{group }{Each region or island in the map is a polygon where}
#'     \item{Region}{id of county, character}
#'  }
#'
#'
#' @examples
#'
#' # Example on how to make map of Sweden using ggplot2.
#' # Note that coord_map() is essential for the map to be in actual scale.
#'
#' ggplot2::ggplot(
#'   data = swe_coords_county,
#'   ggplot2::aes(x=long, y=lat, group = group)
#' ) +
#' ggplot2::geom_polygon(color = "transparent", fill = "blue") +
#' ggplot2::coord_map() +
#' ggplot2::theme_minimal()
#'
#' # Example on how to make a nice Sweden map with text guides.
#'
#' ggplot2::ggplot(
#'   data = swe_coords_county,
#'   ggplot2::aes(x=long, y=lat, group = group)
#' ) +
#' ggplot2::geom_polygon(color = "white", size = 0, fill = "grey")  +
#' ggplot2::geom_point(
#'   data = cnames1,
#'   ggplot2::aes(x = long, y = lat, group = NAME_1, shape = NAME_1),
#'   size = 6 * 0.352777778,
#'   color = "black"
#' ) +
#' ggplot2::scale_shape_manual(
#'   values = as.character(1:9),
#'   guide = ggplot2::guide_legend(ncol = 1)
#' ) +
#' ggplot2::geom_text(
#'   data = cnames2,
#'   ggplot2::aes(x = long, y = lat, group = NAME_1, label = as.character(NAME_1)),
#'   size = 6 * 0.352777778,
#'   color = "black",
#'   hjust = 0.5
#' ) +
#' ggplot2::coord_map() +
#' ggplot2::theme_minimal() +
#' ggplot2::xlab("") +
#' ggplot2::ylab("") +
#' ggplot2::theme(
#'   plot.title           = ggplot2::element_blank(),
#'   axis.text            = ggplot2::element_blank(),
#'   axis.title.x         = ggplot2::element_text(size = 8, color = "black"),
#'   axis.title.y         = ggplot2::element_text(size = 8, color = "black"),
#'   panel.grid           = ggplot2::element_blank(),
#'   panel.background     = ggplot2::element_blank(),
#'   axis.ticks           = ggplot2::element_blank(),
#'   legend.text          = ggplot2::element_text(size = 6),
#'   legend.title         = ggplot2::element_blank(),
#'   legend.key.height    = ggplot2::unit(6, "pt"),
#'   legend.key.width     = ggplot2::unit(6, "pt"),
#'   legend.position      = c(-0.13,1),
#'   legend.justification = c(0,1),
#'   plot.margin          = ggplot2::margin(0,0,0,0, unit = "cm")
#' )
#'
#'
#' @name sweden_map
"swe_coords_county"