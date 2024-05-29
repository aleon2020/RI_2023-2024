function [A] = DH(theta, d, a, alpha)

trans_z = [cosd(theta), -sind(theta), 0, 0; sind(theta), cosd(theta), 0, 0; 0, 0, 1, d; 0, 0, 0, 1];

trans_x =[1 0 0 a; 0 cosd(alpha) -sind(alpha) 0; 0 sind(alpha) cosd(alpha) 0; 0 0 0 1];

A = trans_z * trans_x;

end