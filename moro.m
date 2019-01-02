clear variables;
rotmat = @(a, alpha, d, theta) [cos(theta), -sin(theta)*cos(alpha), sin(theta)*sin(alpha), a*cos(theta); 
    sin(theta), cos(theta)*cos(alpha), -cos(theta)*sin(alpha), a*sin(theta);
    0, sin(alpha), cos(alpha), d;
    0, 0, 0, 1];

syms a1 a2 a3 a4 theta1 theta2 theta3 theta4 theta5 theta6
T01 = rotmat(0, 0, 0, theta1)
T12 = rotmat(a1, -pi/2, 0, theta2)
T23 = rotmat(a2, 0, 0, theta3)
T34 = rotmat(a3, pi/2, a4, theta4)
T45 = rotmat(0, pi/2, 0, theta5)
T56 = rotmat(0, pi/2, 0, theta6)


T56(1, 2) = 0;
T56(2, 2) = 0;
T56(3, 3) = 0;


T45(1, 2) = 0;
T45(2, 2) = 0;
T45(3, 3) = 0;

T34(1, 2) = 0;
T34(2, 2) = 0;
T34(3, 3) = 0;

T12(1, 2) = 0;
T12(2, 2) = 0;
T12(3, 3) = 0;

T01
T12
T23
T34
T45
T56

latex_T01 = latex(sym(T01))
latex_T12 = latex(sym(T12))
latex_T23 = latex(sym(T23))
latex_T34 = latex(sym(T34))
latex_T45 = latex(sym(T45))
latex_T56 = latex(sym(T56))



