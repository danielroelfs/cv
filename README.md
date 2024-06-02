# cv

This repository hosts my online cv created with Quarto.

## Usage

1. Clone this repository
2. Install the necessary tools, Quarto, Chrome, and the R packages in the `renv.lock` file using `renv::restore()` and `renv::install()`
3. Edit the `info.yaml` file according to fit your cv
4. Adjust the metadata in the `cv.qmd` file and any other changes in the cv itself where desired or necessary
5. Update the `render_cv.sh` to include the correct path to Chrome
6. Run `render_cv.sh` to generate a local HTML file and a PDF of your cv
7. Use the Github action included in this repo to publish the cv to your Github Pages

