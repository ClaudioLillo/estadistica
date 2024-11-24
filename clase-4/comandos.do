** Lista de comandos

** x = variable independiente
** y = variable dependiente

** graficar ambas variables mostrando la linea de regresión
graph twoway (scatter y x) (lfit y x)

** ejecutar regresión lineal
regress y x
