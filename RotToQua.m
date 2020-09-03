function q = RotToQua(rotm)
% q = RotToQua(rotm) converts a 3D rotation matrix, rotm, into the corresponding unit quaternion representation, q. 
% The input, rotm, is an 3-by-3 matrix
% 
% The output, q, is an 1-by-4 matrix. Each quaternion is of the form q = [w x y z], with a scalar number as the first value. Each element of Q must be a real number.
r11=rotm(1,1);r12=rotm(1,2);r13=rotm(1,3);
r21=rotm(2,1);r22=rotm(2,2);r23=rotm(2,3);
r31=rotm(3,1);r32=rotm(3,2);r33=rotm(3,3);
q0=0.5*sqrt(1+r11+r22+r23);
q1=(r32-r23)/4*q0;
q2=(r13-r31)/4*q0;
q3=(r21-r12)/4*q0;
q=[q0,q1,q2,q3];
end
