clear variables;
rotmat = @(a, alpha, d, theta) [cos(theta), -sin(theta), 0, a; 
    sin(theta)*cos(alpha), cos(theta)*cos(alpha), -sin(alpha), -d*sin(alpha);
    sin(theta)*sin(alpha), cos(theta)*sin(alpha), cos(alpha), -d*cos(alpha);
    0, 0, 0, 1];

syms a_1 a_2 a_3 a_4 theta_1 theta_2 theta_3 theta_4 theta_5 theta_6
T01 = rotmat(0, 0, 0, theta_1)
T12 = rotmat(a_1, -pi/2, 0, theta_2)
T23 = rotmat(a_2, 0, 0, theta_3)
T34 = rotmat(a_3, pi/2, a_4, theta_4)
T45 = rotmat(0, pi/2, 0, theta_5)
T56 = rotmat(0, pi/2, 0, theta_6)


T56(2, 1) = 0;
T56(2, 2) = 0;
T56(3, 3) = 0;


T45(2, 1) = 0;
T45(2, 2) = 0;
T45(3, 3) = 0;

T34(2, 1) = 0;
T34(2, 2) = 0;
T34(3, 3) = 0;

T12(2, 1) = 0;
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



