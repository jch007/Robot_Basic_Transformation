function [rotm] = EulToRot(alpha,beta,gamma)
rotm=[cos(beta)*cos(gamma),cos(gamma)*sin(alpha)*sin(beta)-cos(alpha)*sin(gamma),sin(alpha)*sin(gamma)+cos(alpha)*cos(gamma)*sin(beta);
      cos(beta)*cos(gamma),cos(alpha)*cos(gamma)+sin(alpha)*sin(beta)*sin(gamma),cos(alpha)*sin(beta)*sin(gamma)-cos(gamma)*sin(gamma);
      -sin(beta),cos(beta)*sin(alpha),cos(alpha)*cos(beta);
      ];
end