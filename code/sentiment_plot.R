brtxt <- read_lines("text/br.txt", skip_empty_rows = TRUE)
brtxt_sentences <- get_sentences(brtxt)
syuzhet_vector <- get_sentiment(brtxt_sentences, method="syuzhet")
plot(
  syuzhet_vector, 
  type="l", 
  main="Plot Trajectory", 
  xlab = "Narrative Time", 
  ylab= "Emotional Valence"
)
