# Penguin Data Analysis with `targets`

This repository contains a Quarto report that demonstrates the use of the `targets` package for reproducible data analysis.
The analysis is based on the Palmer Penguins dataset and includes various linear models and visualizations.

## Project Structure

```
├── _targets.R
├── data
├── data-raw
│  └── penguins.csv
├── docs
│  ├── report.html
│  └── report.qmd
├── figs
│  ├── coef_plot.pdf
│  ├── coef_plot.png
│  ├── scatter_plot.pdf
│  └── scatter_plot.png
├── R
│  └── functions.R
├── README.md
```

## Requirements

- R
- R packages: `targets`, `tidyverse`, `here`, `knitr`, `broom`
- Quarto (for rendering the `.qmd` report)

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/mattocci27/your-repo-name.git
   cd trope-targets
   ```

2. Install the required R packages:

   ```r
   install.packages(c("targets", "tidyverse", "here", "knitr", "broom"))
   ```

3. Run the `targets` pipeline:

   ```r
   library(targets)
   tar_make()
   ```

4. Render the Quarto report:

   ```bash
   quarto render docs/report.qmd
   ```

## Output

The `docs/report.qmd` Quarto file will generate an HTML report with the results of the analysis (PDF and DOCX also work), including visualizations like scatter plots and coefficient plots.


## References

- https://allisonhorst.github.io/palmerpenguins/

- https://quarto.org/

- https://books.ropensci.org/targets/walkthrough.html

You can find more practical examples here:

- https://github.com/mattocci27/trait-ndd

- https://github.com/mattocci27/quarto-targets-template



