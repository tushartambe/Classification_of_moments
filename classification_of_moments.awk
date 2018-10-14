#! /usr/bin/awk -f
{
  line=tolower($0)
}

(line~/:\(/ || line~/no / || line~/not /){
  print "O|"$0
  next
}

(line~/ rent / || line~/pay/ || line~/hurt/ || line~/hard/){
  print "O|"$0
  next
}

(line~/less/ || line~/low / || line~/heavy/ || line~/can't / || line~/control/){
  print "O|"$0
  next
}

(line~/miss/ || line~/leave/ || line~/bye/ || line~/leaving/){
  print "O|"$0
  next
}

(line~/need/ || line~/slow/ || line~/small/ || line~/worst /|| line~/lack/){
  print "O|"$0
  next
}

(line~/sleep/ && line~/not/ || line~/bore / || line~/boring/){
  print "O|"$0
  next
}

(line~/change/ || line~/too long/ || line~/too far/ ||line~/too cool/ || line~/too cold/ || line~/long distance/){
  print "O|"$0
  next
}

(line~/bad/ || line~/congested/ || line~/fear/ ||line~/sleepy/ || line~/difficult/){
  print "O|"$0
  next
}

(line~/left me/ || line~/sea/ || line~/beach/ || line~/left with/ || line~/have to walk/ || line~/have to go/){
  print "O|"$0
  next
}

(line~/typing speed/ || line~/daily walk/ || line~/injuries/){
  print "O|"$0
  next
}
#------------remaining moments-------
{
  print "W|"$0
  next
}
