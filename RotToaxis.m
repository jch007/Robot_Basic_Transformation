function [theta,K]=RotToAxis(R)
% RotToAxis convert rotation matrix to axis angles
% [theta,k] = RotToAxis(R) converts a 3D rotation matrix, R, into the corresponding
% axis anle. R is an 3-by-3-by-N matrix containing N rotation
% matrices. The output, theta, is a rotation angles.K is a 3-by-1 rotation axis.
  r11=R(1,1);r12=R(1,2);r13=R(1,3);
  r21=R(2,1);r22=R(2,2);r23=R(2,3);
  r31=R(3,1);r32=R(3,2);r33=R(3,3);
  theta=acos((r11+r22+r33-1)/2);
  kx=(r32-r23)/2*sin(theta);
  ky=(r13-r31)/2*sin(theta);
  kz=(r21-r12)/2*sin(theta);
  K=[kx,ky,kz];
  K=K/norm(K);
end
