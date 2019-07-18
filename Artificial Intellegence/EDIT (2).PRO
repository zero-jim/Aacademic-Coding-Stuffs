domains
  file=data
goal
  write("File to edit: "), readln(F),
  file_str(F,S1), 
  makewindow(1,14,71,"LITTLE EDITOR",0,0,25,80),
  shiftwindow(1), clearwindow,
  editmsg(S1,S2,"","","ESC:quit   F10:save",0,"",C),
  C=0, openwrite(data,F), writedevice(data), write(S2),
  writedevice(screen), clearwindow, write(F," has been saved").