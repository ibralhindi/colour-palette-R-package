# Define colour palette variables and functions here

ibrrra_colours <- list(
  # add your colours as a named list here, i.e.
  "red" = "#DD1114",
  "blue" = "#2868D0",
  "green" = "#33A35A",
  "grey" = "#98A196",
  "yellow" = "#DFDC1C"
)

#' Ibrrra Color Palette
#'
#' @description This function creates a vector of n colors from a maximum of five colors. The colors are: "red", "blue", "green", "grey", and "yellow"
#'
#' @param direction Sets the order of colors in the scale. If 1, the colors are ordered according to the default. If -1, the order of colors is reversed.
#'
#' @return A character vector of color hex values
#'
#' @examples
#' ibrrra_palette()(1)
#' ibrrra_palette(direction = -1)(4)
#'
#' @export
ibrrra_palette <- function(direction = 1) {
  # the palette function returns a function,
  # so it would be called like NAME_palette()(2) to generate
  # your palette with two colours

  stopifnot(class(direction) == "numeric")

  function(n) {
    # a warning or an error should be presented if n is larger
    # the length of NAME_colours
    if (n > 5) warning("ibrrra Color Palette only has 5 colors.")

    color_list <- ibrrra_colours[1:n]

    # if direction is less than 1 reverse the ordering of the
    # palette
    color_list <- unname(unlist(color_list))
    if (direction >= 0) color_list else rev(color_list)

  }
}
