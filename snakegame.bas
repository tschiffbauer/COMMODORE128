10 scnclr
20 let l=1
30 let w=40 : let h=24
40 gosub 2000
50 dim x(100):dim y(100)
60 x(l)=20:y(l)=12
65 rem main loop
70 gosub 3000
80 for n=1 to 1000:next n
90 goto 70
999 rem read keyboard input
1000 let k=peek(212)
1010 if k=86 then x(l)=x(l)+1
1020 if k=85 then x(l)=x(l)-1
1030 if k=83 then y(l)=y(l)-1
1040 if k=84 then y(l)=y(l)+1
1050 return
1990 rem create food
2000 let fx=int(rnd(1)*w)
2010 let fy=int(rnd(1)*h)
2020 char 0,fx,fy,"f"
2040 return
2990 rem display snake
3000 char 0,x(1),y(1)," "
3020 if l>1 then gosub 5000
3030 gosub 1000
3040 if x(l)=fx and y(l)=fy then gosub 4000
3050 for i=1 to l
3060 char 0,x(i),y(i),"s"
3080 next i
3090 return
3990 rem grow snake
4000 l=l+1
4010 x(l)=x(l-1)
4020 y(l)=y(l-1)
4030 gosub 2000
4040 return
4990 rem shift snake array
5000 for i=1 to l-1
5010 x(i)=x(i+1)
5020 y(i)=y(i+1)
5030 next i
5040 return