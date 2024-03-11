summary <- function(input_path, output_path) {
  d <- read.csv("input_path", header = T, stringsAsFactors = F, sep = ",")
  
  max_weight <- round(max(d$weight), 2)
  max_height <- round(max(d$height), 2)
  
  set_name <- tools::file_path_sans_ext(basename(input_path))
  summary_df <- data.frame (set = set_name, weight = max_weight, height = max_height)
  
  write.csv(summary_df, file = output_path, row.names = F, quote = F)
  
  return (summary_df)
}

