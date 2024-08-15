scatter_fun <- function(data) {
  ggplot(data, aes(x = flipper_length_mm, y = bill_length_mm, col = species, shape = species)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE) +
    scale_color_brewer(palette = "Dark2") +
    theme_minimal()
}


coef_fun <- function(data) {
  ggplot(data, aes(x = term, y = estimate)) +
    geom_point(size = 3) +
    geom_errorbar(aes(ymin = conf.low, ymax = conf.high), width = 0.2) +
    coord_flip() + # Flip the coordinates for better readability
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))
 }

#' @title ggsave for targets
#' @inheritParams ggplot2::ggsave
my_ggsave <- function(filename, plot, units = c("in", "cm",
        "mm", "px"), height = NA, width = NA, dpi = 300, ...) {
  ggsave(
    filename = paste0(filename, ".png"),
    plot = plot,
    height = height,
    width = width,
    units = units,
    dpi = dpi,
    ...
  )
  ggsave(
    filename = paste0(filename, ".pdf"),
    plot = plot,
    height = height,
    width = width,
    units = units,
    dpi = dpi,
    ...
  )
  str_c(filename, c(".png", ".pdf"))
}
