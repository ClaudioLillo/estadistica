clear
cd "C:\Users\cilil\Desktop\Stata\clases\bases-91"

use base_91

describe
**generar variable nueva con valores nulos
generate zona_pais = .

** reorganizar
/*
01	Región de Tarapacá -> N
02	Región de Antofagasta -> N
03	Región de Atacama -> N
04	Región de Coquimbo -> N
05	Región de Valparaíso -> C
06	Región del Libertador General Bernardo O'Higgins -> C
07	Región del Maule -> C
08	Región del Biobío -> S
09	Región de La Araucanía -> S
10	Región de Los Lagos -> S
11	Región de Aysén del General Carlos Ibáñez del Campo -> S
12	Región de Magallanes y de la Antártica Chilena -> S
13	Región Metropolitana de Santiago -> C
14	Región de Los Ríos -> S
15	Región de Arica y Parinacota -> N
16	Región de Ñuble -> C
*/

replace zona_pais = 1 if region_3==1 | region_3==2 | region_3==3 |region_3==4 |region_3==15

replace zona_pais = 2 if region_3==5 | region_3==6 | region_3==7 | region_3==13 | region_3==16

replace zona_pais = 3 if region_3==8 | region_3==9 | region_3==10 | region_3==11 | region_3==12 |region_3==14

/*
. label define origin 0 "Domestic" 1 "Foreign"
. label values foreign origin
. describe
*/

label define etiqueta_zona 1 "norte" 2 "centro" 3 "sur"
label values zona_pais etiqueta_zona

** replace zona_pais = 1 if region_3 =< 5 & region_3 >=1