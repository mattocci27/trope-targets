library(targets)

source("R/functions.R")

tar_option_set(packages = c(
  "tidyverse",
  "broom"
))


list(
  tar_target(
    penguins_csv,
    "data-raw/penguins.csv",
    format = "file"
  ),
  tar_target(
    penguins,
    read_csv(penguins_csv),
  ),
  tar_target(
    fit,
    lm(body_mass_g ~ flipper_length_mm * species, penguins),
  ),
  tar_target(
    scatter_plot,
    scatter_fun(penguins),
  ),
  tar_target(
    scatter_plot_files,
    my_ggsave("figs/scatter_plot", scatter_plot)
  ),
  tar_target(
    coef_df,
    tidy(fit, conf.int = TRUE),
  ),
  tar_target(
    coef_plot,
    coef_fun(coef_df),
  ),
  tar_target(
    coef_plot_files,
    my_ggsave("figs/coef_plot", coef_plot)
  ),
  NULL
)
