clear;
clc;
clf;


Xp = 25; %x component of the positive charge
Yp = 0; %y component of the positive charge
Xn = -25; %x component of the negative charge
Yn = 0; %y component of the positive charge
Qp = 1.602e-19; %charge of positive element
Qn = -1.602e-19; %charge of negative element
Rp = 0;%distance from positive charge
Rn = 0;%distance from negative charge
Eo = 8.854e-12; %Epsilon nought, permeativity of free space
Vp = 0; %potential from positive charge
Vn = 0; %potential from negative charge
Vtot = 0; %total potential

%==================================
% Calculate the potential everwhere
%==================================
[x,y] = meshgrid(-50:1:50, -50:1:50); %defines x, y coordinates

Rp = sqrt(((Xp - x).^2) + ((Yp - y).^2)); 
Rn = sqrt(((Xn - x).^2) + ((Yn - y).^2));

Vp = (Qp)./(4.*pi.*Eo.*Rp);
Vn = (Qn)./(4.*pi.*Eo.*Rn);

Vtot = Vp + Vn;%using superposition, calculated total charge

%This loop finds the datapoints that are +inf and -inf, and replaces
%them with a value relatively close to adjacent values
for i = 1:100
   for j = 1:100
       if(Vtot(i,j) > 1)
           Vtot(i,j) = 1.6e-9;
       end
       if(Vtot(i,j) < -1)
           Vtot(i,j) = -1.6e-9;
       end
       
   end
end

%This calculates the x and y components of the electric field
[Gx,Gy] = gradient(-Vtot);



figure(1);
A = 4; %A controlls how many arrows are displayed on quiver
quiver(x(1:A:end,1:A:end),y(1:A:end,1:A:end),Gx(1:A:end,1:A:end),Gy(1:A:end,1:A:end),15);
hold on;

contour(x,y,Vtot,500);
colormap(gray);
xlabel('x (m)','fontsize',14);
ylabel('y (m)','fontsize',14);
colorbar('location','eastoutside','fontsize',12);
title('Electric potential and the Electric field','fontsize',14);

figure(3);
surf(x,y,Vtot);
