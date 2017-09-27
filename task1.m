a = 1.2; 
b = 0.48;
xn=0.7; 
xk=2.2; 
dx=0.3;
X=[0.25,0.36,0.56,0.94,1.28]; 
X=sort(X);
x=xn:dx:xk;

function yres=yCalc(x,a,b)
  chisl = b^3+(sin(a.*x)).^2;
  znam = acos(x.*b.*x)+exp(-x./2);
  yres = chisl./znam;
end

y1 = yCalc(x,a,b);
y2 = yCalc(X,a,b);

plot(x,y1,'r:o','LineWidth',3)
title('First lab part A')
xlabel('x')
ylabel('y1')
grid on;

hold on;

plot(X,y2,'b-*','LineWidth',3)
title('First lab part B')


