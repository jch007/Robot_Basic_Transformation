function [R1,R2,R3]=QuanToEuler(q)
q0=q(1);
q1=q(2);
q2=q(3);
q3=q(4);
R1=atan((2*(q1*q2-q0*q3))/(q0^2+q1^2-q2^2-q3^2));
R2=atan(-2*(q0*q2+q1*q3));
R3=atan((2*(q2*q3-q0*q1))/(q0^2-q1^2-q2^2+q3^2));
end