clear;
clc;
clf;


Xp = 25; %x component of the positive wire
Yp = 0; %y component of the positive wire
Xn = -25; %x component of the negative wire
Yn = 0; %y component of the positive wire
Ip = 1; %current through the positive wire
In = -1; %current through the negative wire
Rp = 0;%distance from positive wire
Rn = 0;%distance from negative wire
Hpx = 0; %x component of magnetic field from positive wire
Hpy = 0; %y component of magnetic field from positive wire
Hnx = 0; %x component of magnetic field from negative wire
Hny = 0; %y component of magnetic field from positive wire

Tx = 0; %x component of total magnetic field
Ty = 0; %y component of total magnetic field

%========================================
% Calculate the magnetic field everywhere
%========================================
[x,y] = meshgrid(-50:1:50, -50:1:50); %defines x, y coordinates

Rp = sqrt(((Xp - x).^2) + ((Yp - y).^2)); 
Rn = sqrt(((Xn - x).^2) + ((Yn - y).^2));

Hmag_p = ((Ip)./(2*pi*Rp));
Hmag_n = ((-Ip)./(2*pi*Rn));

H = Hmag_p + Hmag_n;

x_unit_vector_p = cos(bangle(y,(x-25)) + (pi/2));
y_unit_vector_p = sin(bangle(y,(x-25)) + (pi/2));

x_unit_vector_n = cos(bangle(y,(x+25)) + (pi/2));
y_unit_vector_n = sin(bangle(y,(x+25)) + (pi/2));

xcomp_p = Hmag_p .* x_unit_vector_p;
ycomp_p = Hmag_p .* y_unit_vector_p;

xcomp_n = Hmag_n .* x_unit_vector_n;
ycomp_n = Hmag_n .* y_unit_vector_n;

xcomp = xcomp_p + xcomp_n;
ycomp = ycomp_p + ycomp_n;


for i = 1:100
   for j = 1:100
       if(H(i,j) > 1)
           H(i,j) = .1560;
       end
       if(H(i,j) < -1)
           H(i,j) = -.1560;
       end
       
   end
end

figure(1);

contour(x,y,H,500);
hold on;

A = 4; %A controlls how many arrows are displayed on quiver
quiver(x(1:A:end,1:A:end),y(1:A:end,1:A:end),xcomp(1:A:end,1:A:end),ycomp(1:A:end,1:A:end));
colormap(gray); 
xlabel('x (m)','fontsize',14);
ylabel('y (m)','fontsize',14);
colorbar('location','eastoutside','fontsize',12);
title('Magnetic field from two infinite wires','fontsize',14);
