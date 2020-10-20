s="fork"
10.times do 
  print s[0]
  s=s.split('').rotate(1).join('')
end
