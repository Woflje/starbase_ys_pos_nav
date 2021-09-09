import pandas as pd
import math

data = pd.read_excel(r'measurement_data_and_coordinate_calculations.xlsx')
Cx = data['Unnamed: 3'][9]
Dx = data['Unnamed: 4'][9]
Cx_to_C = data['Unnamed: 11'][0]
Dx_to_D = data['Unnamed: 11'][1]
C_to_D = data['Unnamed: 6'][6]
z=39433
Cy=0
i=0
Dy=0
found=False
C_to_D_dif = abs(math.sqrt((Cx-Dx)**2+(Cy-Dy)**2)-C_to_D)
C_to_D_dif_prev=C_to_D_dif
while found == False:
	Cy = math.sqrt(Cx_to_C**2 - z**2)
	Dy = -math.sqrt(Dx_to_D**2 - z**2)
	C_to_D_dif_prev=C_to_D_dif
	C_to_D_calc = math.sqrt((Cx-Dx)**2+(Cy-Dy)**2)
	C_to_D_dif = abs(C_to_D_calc-C_to_D)
	if C_to_D_dif > C_to_D_dif_prev :
		found = True
	z += 0.00001
	i += 1
	if i > 1000000:
		print(z)
		i = 0
print(f"Found Cy: {Cy}\nFound Dy: {Dy}\nFound Cz and Dz: {z}")