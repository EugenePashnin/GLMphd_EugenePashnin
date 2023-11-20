make_slide_index <- function(exclude = c("extra")){
  qmd <- list.files("slides", pattern = "*.qmd", recursive = TRUE, full.names = TRUE)
  qmd <- qmd[!grepl(paste0(exclude, collapse = "|"), qmd)]
  html <- paste0(tools::file_path_sans_ext(qmd), ".html")
  qmd <- gsub("slides/", "", qmd)
  html <- gsub("slides/", "", html)
  data.frame(
    Topic = tools::file_path_sans_ext(qmd),
    qmd = sprintf("[qmd](%s)", qmd),
    html = sprintf("[html](%s)", html)
  )
}
