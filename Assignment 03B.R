load("prrace08.rda")
View(prrace08)
n<-51
ov<-0
mv<-0
for(i in 1:n){
  if(prrace08$p_obama[i]>prrace08$p_mc_cain[i]){
    ov=ov+prrace08$el_votes[i]
  }else{
    mv=mv+prrace08$el_votes[i]
  }
}
ov=ov+1
mv=mv-1
cat("Obama: ",ov)
cat("\n")
cat("McCain: ",mv)