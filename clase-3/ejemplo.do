** Limpiar la terminal
clear

** Cambiar el dierctorio
cd "C:\Users\Usuario\Directorio"

** Cargar base de datos
use base_91

** Tabular una variable
tab iden_pol_2

** Tabular una variable omitiendo las etiquetas
tab iden_pol_2, nolabel

** Tabular una variable omitiendo las etiquetas y mostrando los valores faltantes
tab iden_pol_2, nolabel missing

** Generar una nueva variable a partir de otra variable existente
generate nueva_variable = variable_existente

** Reemplazar valores de una variable si se cumple una condición
replace variable = 1 if variable == 2

** Reemplazar valores de una variable si se cumple una condición y se cumple otra condición
replace variable = 1 if variable == 2 & variable_2 == 3

** Reemplazar valores de una variable si se cumple una condición o se cumple otra condición
replace variable = 1 if variable == 2 | variable_2 == 3

** Reemplazar valores de una variable por nulo si se cumple una condición
replace variable = . if variable == 2

** Recodificar una variable
recode variable (1=2) (2=1) (-8=3) (-9=3), generate(nueva_variable)

** Tabular cruzado
tab variable_1 variable_2

** Tabular cruzado agregando porcentaje en fila, celda y columna
tab variable_1 variable_2, row cell col

** Tabular cruzado omitiendo con chi2
tab variable_1 variable_2, chi2

