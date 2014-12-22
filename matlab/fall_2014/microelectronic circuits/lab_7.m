clear;
clc;

%%%%%%%%%%%%
%
% Experiment
%
%%%%%%%%%%%%

syms Vt; % Threshold Voltage

Vg1 = 4.965; % When Vdd is 10V 
Vs1 = 2.558; % When Vdd is 12.8V

R3 = 10e3; % Resistor under Vs

Vgs1 = Vg1 - Vs1; % When Vdd is 10V 

id1 = Vs1 / R3; % When Vdd is 10V 

Vg2 = 6.443; % When Vdd is 12.8V 
Vs2 = 3.89; % When Vdd is 12.8V

Vgs2 = Vg2 - Vs2; % When Vdd is 12.8V
id2 = Vs2 / 10e3; % When Vdd is 12.8V

% Solving for Threshold voltage
VT = solve((id1 / id2) == ((Vgs1 - Vt)^2)/((Vgs2 - Vt)^2), Vt);

% two values for Vt
double(VT);

% The first result is correct
VT = double(VT(1));

% Solving for Kn with the threshold voltage known
Kn = (2 * id1)/ ((Vgs1 - VT)^2);

%%%%%%%%%%
%
% Part 3
%
%%%%%%%%%%


% This is the Vg when Vs is 50% greater than its original value
syms Vg 

% Vs at 50% its original value at 10V Vdd
%Vs = 3.839;
Vs = Vs1 * 1.5;

% Solving for Vg that will make Vs 50% greater
VG = solve(Vs == .5 * Kn * ((Vg - Vs - VT)^2) * R3, Vg);

% two values for Vg
double(VG);

% The second result is correct
VG = double(VG(2));

%%

syms r1 

% Voltage divider, solving for resistor value that will increas Vs 50%
x = solve(6.3847 == 10*(1e4 / (1e4 + r1)), r1);
double(x)

