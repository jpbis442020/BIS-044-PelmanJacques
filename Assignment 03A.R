num<-1
cat(num)
for(i in 24:num){
  i=num+1
  num=num^2
  cat("    ", num)
  cat("\n")
  num=i
}