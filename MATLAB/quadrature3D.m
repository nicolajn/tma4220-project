function I = quadrature3D(p1,p2,p3,p4,Nq,g)
%QUADRATURE2D Summary of this function goes here
%   Detailed explanation goes here

qr = {[1/4, 1/4, 1/4, 1/4], 1;
       0, 0;
       0, 0;
      [0.5854102, 0.1381966, 0.1381966, 0.1381966;...
       0.1381966, 0.5854102, 0.1381966, 0.1381966;...
       0.1381966, 0.1381966, 0.5854102, 0.1381966;...
       0.1381966, 0.1381966, 0.1381966, 0.5854102],...
      [0.25, 0.25, 0.25, 0.25];
      [1/4, 1/4, 1/4, 1/4; 1/2, 1/6, 1/6, 1/6;...
       1/6, 1/2, 1/6, 1/6; 1/6, 1/6, 1/2, 1/6;...
       1/6, 1/6, 1/6, 1/2],...
      [-4/5, 9/20, 9/20, 9/20, 9/20]
     };

[lb, w] = qr{Nq, :};

I = 0;
for q = 1:Nq
    I = I + g(lb(q,:)*[p1' p2' p3' p4']')*w(q);
end

volume = abs(det([(p2-p1)' (p3-p1)' (p4-p1)']))/6; % Volume of a tetrahedron
I = volume*I;
end

