function dC = clockmechanism(t,C)

% User friendly variable names.
CIO3  = C(1); HSO3 = C(2); 
CIHO2 = C(3); CI = C(4); 
CH    = C(5); CHIO = C(6); 
CI2   = C(7); CSO3 = C(8);

% Rate Constants.
k1 = 2.95e-1;
k2 = 2.0e10;
k3 = 1.0e5;
k4 = 3.0e5;
k5 = 3.0e12;
k6 = 2.2;
k7 = 1.0e6;
k8 = 5.0e10;
k9 = 3.0e3;

% Rate Laws.
r1 = k1*CIO3*CHSO3;
r2 = k2*CHIO2*CI*CH;
r3 = k3*CHIO2*CHIO;
r4 = k4*CHIO3*CI*CH^2;
r5 = k5*CHIO*CI*CH;
r6 = k6*CI2;
r7 = k7*CI2*CHSO3;
r8 = k8*CSO3*CH;
r9 = k9*CHSO3;

% Mass balances.

dCIO3 = -r1 + r3 - r4;
dCHSO3 = -r1 - r7 + r8 + r9;
dCHIO2 = r1 - r2 - r3 + r4;
dCI = -r2 + r3 - r4 - r5 +r6 + 2*r7;
dCH = -r2 + 2*r3 - 2*r4 - r5 + r6 + 3*r7 - r8 + r9;
dCHIO = 2*r2 - r3 + r4 - r5 + r6;
dCI2 = r5 - r6 - r7;
dCSO3 = -r8 + r9;

% Assign output variables.

dC(1,:) = dCIO3;
dC(2,:) = dCHSO3;
dC(3,:) = dCHIO2;
dC(4,:) = dCI;
dC(5,:) = dCH;
dC(6,:) = dCHIO;
dC(7,:) = dCI2;
dC(8,:) = dCSO3;















