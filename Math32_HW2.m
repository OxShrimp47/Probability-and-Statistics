% Name:Tommy Lee Truong
% Last Edit:Jan 17 2021
% Program Name: Homework 2
clc; clear all; close all;

x = linspace(0,pi/4);
f = @(x) tan(x);
y = f(x);
p1 = @(x) 1-x+pi/4;
y1 = p1(x);
p2 = @(x) 1+(8*pi+pi.^2)/32 - ((pi+4)/4)*x + (1/2)*x.^2;
y2 = p2(x);
p3 = @(x) 1 + (48*pi+6*pi.^2-pi.^3)/192-((16+4*pi+pi.^2)/16)*x+((6+7*pi)/12)*x.^2-(1/3)*x.^3;
y3 = p3(x);

figure
plot(x,y,x,y1,'--',x,y2,'-o',x,y3,':','LineWidth',2);
xlabel('0<x<pi/4');
legend('f(x)','p1','p2','p3');

r(1) = norm(y-y1,inf);
r(2) = norm(y-y2,inf);
r(3) = norm(y-y3,inf);
disp(r);
