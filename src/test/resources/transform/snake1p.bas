10 poke 53280,11: poke 53281,0: poke 646,1
100 l=2:h=0:d=-1:wz=5
110 dim  p%(999)
120 p%(0)=1024+12*40+20
130 p%(1)=1024+12*40+21
140 print  chr$(147);
150 gosub  1000: gosub  6000
160 gosub  3000: gosub  7000
170 goto  150
1000 i=h:sp=i-1: if  sp=-1 then  sp=l-1
1020 sa=p%(sp)
1030 ka=p%(i)+d: gosub  4000: poke  sa,32
1040 p%(sp)=ka:h=sp
1050 return 
2000 if  l>999 then  return 
2010 l=l+1: for  i=l-1 to  h+1 step  -1
2020 p%(i)=p%(i-1): next 
2030 sp=h-1: if  sp=-1 then  sp=l-1
2040 h=h+1: if  h=l then  h=0
2050 sn=h-1: if  sn=-1 then  sn=l-1
2060 p%(sn)=2: return 
3000 j=peek(56320)
3010 if  j=127 then  return 
3020 if  j=126 then  d=-40: return 
3030 if  j=125 then  d=40: return 
3040 if  j=123 then  d=-1: return 
3050 if  j=119 then  d=1: return 
3060 rem  if (j and 16)=0 then gosub 2000
3070 return 
4000 if  ka<1024 then  ka=ka+1000
4010 if  ka>2023 then  ka=ka-1000
4020 if  peek(ka)=160 then  gosub  5000
4030 if  peek(ka)=81 then  wz=5: gosub  2000
4050 poke  ka,160: return 
5000 print "aua!"
5010 wait  56320,16,16
5020 run 
6000 wz=wz-1: if  wz<>0 then  return 
6005 x=int(4+rnd(0)*31):y=int(2+rnd(0)*20)
6010 p=1024+y*40+x
6020 if  peek(p)<>32 then  6005
6030 poke  p,81: return 
7000 print  chr$(19);(l-2)*100: return 
