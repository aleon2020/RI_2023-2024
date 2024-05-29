function [q1,q2,q3,q4,q5] = Pos(Px,Py,Pz)

l1 = 1.3;
l2 = 1;
l3 = 1;
l4 = 0.5;
l5 = 1;

% Se calcula con los resultados del Aula Virtual
q4=asin((Pz-l1)/(l4+l5));

K=l3+(l4+l5)*cos(q4);
q3 = [acos((Px^2+Py^2-l2^2-K^2)/(2*l2*K)), -acos((Px^2+Py^2-l2^2-K^2)/(2*l2*K))];

q1=atan2(-Px,Py)+atan2(sqrt(Py.^2+(-Px).^2-(K*sin(q3)).^2), K*sin(q3));

q2 = 0; q5 = 0;
end