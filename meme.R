library(magick)
meme <- image_read("inspo_meme.png")
meme
my_meme <- meme%>%
  image_annotate("When the assignment is due tonight", size = 50, color = "white", gravity = "north") %>%
  image_annotate("and you just started it", size = 50, color = "white", gravity = "south")
my_meme
image_write(my_meme, "my_meme.png")
frame1 <- meme %>%
  image_annotate("?", size = 80, color = "white", gravity = "east")
frame2 <- meme %>%
  image_annotate("??", size = 80, color = "white", gravity = "east")
frame3 <- meme %>%
  image_annotate("???", size = 80, color = "white", gravity = "east")
frame4 <- meme %>%
  image_annotate("????", size = 80, color = "white", gravity = "east")
animation <- c(frame1, frame2, frame3, frame4)
animation <- image_animate(animation, fps = 1)
animation
image_write(animation, "my_animated_meme.gif")