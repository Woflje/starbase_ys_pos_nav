Ax=0;
Ay=0;
Az=0;
Bx=120933.8128;
By=0;
Bz=0;
Cx=64498.0038;
Cy=60909.7701;
Cz=39433.5018;
Dx=66358.54235;
Dy=-69939.53471;
Dz=39433.5018;

testx=9;
testy=100;
testz=2000;

dA=sqrt((testx-Ax)^2 + (testy-Ay)^2 + (testz-Az)^2);
dB=sqrt((testx-Bx)^2 + (testy-By)^2 + (testz-Bz)^2);
dC=sqrt((testx-Cx)^2 + (testy-Cy)^2 + (testz-Cz)^2);
dD=sqrt((testx-Dx)^2 + (testy-Dy)^2 + (testz-Dz)^2);

Xo = (dA^2 +Bx^2 -dB^2)/(2*Bx)
Yo = ((Bx^2 +((dA^2 +Bx^2 -dB^2)/(2*Bx))*(2*Dx - 2*Bx) -dB^2 -Dx^2 -Dy^2 -Dz^2 +dD^2)/(-2*Dz) - (Bx^2 +((dA^2 +Bx^2 -dB^2)/(2*Bx))*(2*Cx - 2*Bx) -dB^2 -Cx^2 -Cy^2 -Cz^2 +dC^2)/(-2*Cz))/((2*Cy)/(-2*Cz)-(2*Dy)/(-2*Dz))
Zo = ((Bx^2 +((dA^2 +Bx^2 -dB^2)/(2*Bx))*(2*Dx - 2*Bx) -dB^2 -Dx^2 -Dy^2 -Dz^2 +dD^2)/(-2*Dy) - (Bx^2 +((dA^2 +Bx^2 -dB^2)/(2*Bx))*(2*Cx - 2*Bx) -dB^2 -Cx^2 -Cy^2 -Cz^2 +dC^2)/(-2*Cy))/((2*Cz)/(-2*Cy)-(2*Dz)/(-2*Dy))
