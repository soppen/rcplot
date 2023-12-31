test_that("map plot works", {
  # Very simple testing to see that
  # function at least returns a plot object
  expect_equal(
    c("gg", "ggplot"),
    class(
      map_plot(
        df = counties,
        fill_var = "id",
        fill_colors = c(
          RColorBrewer::brewer.pal(12, "Set3"),
          RColorBrewer::brewer.pal(9, "Spectral"))
        )
      )
  )
})
