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

origin_x=(Ax+Bx+Cx+Dx)/4;
origin_y=(Ay+By+Cy+Dy)/4;
origin_z=(Az+Bz+Cz+Dz)/4;

sympref('FloatingPointOutput',true);

syms dA dB dC dD

max_distance=sqrt(9223372036854775807);

X = simplify((dA^2 +Bx^2 -dB^2)/(2*Bx))-origin_x
Y = simplify(((Bx^2 +((dA^2 +Bx^2 -dB^2)/(2*Bx))*(2*Dx - 2*Bx) -dB^2 -Dx^2 -Dy^2 -Dz^2 +dD^2)/(-2*Dz) - (Bx^2 +((dA^2 +Bx^2 -dB^2)/(2*Bx))*(2*Cx - 2*Bx) -dB^2 -Cx^2 -Cy^2 -Cz^2 +dC^2)/(-2*Cz))/((2*Cy)/(-2*Cz)-(2*Dy)/(-2*Dz)))-origin_y
Z = simplify(((Bx^2 +((dA^2 +Bx^2 -dB^2)/(2*Bx))*(2*Dx - 2*Bx) -dB^2 -Dx^2 -Dy^2 -Dz^2 +dD^2)/(-2*Dy) - (Bx^2 +((dA^2 +Bx^2 -dB^2)/(2*Bx))*(2*Cx - 2*Bx) -dB^2 -Cx^2 -Cy^2 -Cz^2 +dC^2)/(-2*Cy))/((2*Cz)/(-2*Cy)-(2*Dz)/(-2*Dy)))-origin_z
divide_by=100000000;
Xo=X*divide_by
Yo=Y*divide_by
Zo=Z*divide_by