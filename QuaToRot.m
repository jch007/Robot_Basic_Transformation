function [rotm] = QuaToRot(q0,q1,q2,q3)
r11=q0^2+q1^2-q2^2-q3^2;r12=2*(q1*q2-q0*q3);r13=2*(q1*q3+q0*q2);
r21=2*(q1*q2+q0*q3);r22=q0^2-q1^2+q2^2-q3^2;r23=2*(q2*q3-q0*q1);
r31=2*(q1*q3+q0*q2);r32=2*(q2*q3+q0*q1);r33=q0^2-q1^2-q2^2+q3^2;
rotm=[r11,r12,r13;
      r21,r22,r23;
      r31,r32,r33];
end