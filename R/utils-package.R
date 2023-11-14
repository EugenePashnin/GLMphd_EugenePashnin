make_slide_index <- function(){
  qmd <- list.files("slides/", pattern = "*.qmd", recursive = TRUE, full.names = TRUE)
  html <- paste0(tools::file_path_sans_ext(qmd), ".html")
  qmd <- gsub("slides/", "", qmd)
  html <- gsub("slides/", "", html)
  data.frame(
    Topic = tools::file_path_sans_ext(qmd),
    qmd = sprintf("[qmd](%s)", qmd),
    html = sprintf("[html](%s)", html)
  )
}
