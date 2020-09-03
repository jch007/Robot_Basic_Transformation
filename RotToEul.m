function [alpha,beta,gamma] = RotToEul(rotm)
% RotToEul convert rotation matrix to Euler angles,The Euler angles are specified by the axis rotation sequence,The default sequence of this function is ‘ZYX’
% [alpha,beta,gamma]  = RotToEul(rotm) converts a 3D rotation matrix, rotm, into the corresponding Euler angle.
r11=rotm(1,1);r12=rotm(1,2);r13=rotm(1,3);
r21=rotm(2,1);r22=rotm(2,2);r23=rotm(2,3);
r31=rotm(3,1);r32=rotm(3,2);r33=rotm(3,3);
alpha=atan2(r32,r33);
beta=atan2(-r31,sqrt(r32^2+r33^2));
gamma=atan2(r21,r11);
end
