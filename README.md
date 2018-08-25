#### INSTITUTO TECNOLÓGICODE BUENOS AIRES

# Trabajo Práctico de Laboratorio Nr. 1


# Electrónica 3 - 2018

Este trabajo práctico corresponde a los temas de la Unidad 1:

- Códigos
- Álgebra de Boole
- Lógica Combinacional
- Conceptos básicos de Verilog
Consideraciones importantes:
- Fecha de entrega: 6 de Septiembre de 2018 a las 00:00hs.
- Modo de entrega: Se tomará como entrega el último commit en el branch master del repositorio del
grupo previo al horario de entrega.
- Evaluación: La nota del trabajo práctico tendrá una nota por su contenido, prolijidad, ponderada por
la calidad de redacción tanto de texto como de código.
- El informe NO deberá superar las 10 páginas y se tomará como criterio de evaluación el análisis de las
mediciones, exposición de los resultados, capacidad de síntesis, conclusiones, ortografía y prolijidad.
- Compilación del informe y programas: Tanto el informe como los programas que se soliciten en el
trabajo práctico deberán compilarse mediante el uso de make (opcionalmente cmake) asistidos por
los ejemplos vistos en clase.
- Testing: Todos los programas que se escriban deberán contar con sus respectivos tests, asistidos por
los ejemplos vistos en clase.


## EJERCICIO 1

Dada una cierta convención de números en punto fijo (Signado, Cant. bits de parte entera, Cant. bits de
parte fraccionaria), escribir un programa que acepte estos tres parámetros por línea de comando en forma
numérica e imprima resolución y rango de la convención elegida. 

### Imprimir ERROR ante entradas no válidas.

Ejemplo:

```
run 0 1 1

Res: 0.5 | Ran: 1.
```

## EJERCICIO 2

Dada la siguiente expresión en maxtérminos:

```
f ( d , c , b , a )=∏( M 0 , M 1 , M 5 , M 7 , M 8 , M 10 , M 14 , M 15 )
```
- Simplifique paso a paso aplicando propiedades del álgebra booleana.
- Simplifique implementando mapas de Karnaugh.
- Dibuje el circuito lógico resultante utilizando compuertas AND, OR, NOT.
- Dibuje el circuito nuevamente utilizando únicamente compuertas NAND (grupos pares) o NOR (grupos
    impares).

## EJERCICIO 3

Implemente los siguientes módulos en Verilog.

- Grupos pares: ENCODER de 4 entradas. DEMUX de 4 salidas.
- Grupos impares: DECODER de 4 salidas. MUX de 4 entradas.

## EJERCICIO 4

Se desea realizar un circuito que convierta un número binario de 4 bits en su complemento a dos.

- Exprese el valor de cada bit de salida en función de los mintérminos de los bits de entrada.
- Exprese el valor de cada bit de salida en forma simplificada.
- Dibuje el circuito lógico resultante utilizando compuertas AND, OR, NOT.
- Implemente el circuito resultante en Verilog.

## EJERCICIO 5

Implemente en Verilog un sumador de dos números de un dígito en formato BCD expresados a la salida como
un número de dos dígitos en formato BCD. Respalde sus decisiones y proceso de diseño con las herramientas
y técnicas vistas en la materia, de tal manera que esto se vea adecuadamente plasmado en el informe.


## EJERCICIO 6

Implemente en Verilog una ALU de 4 bits.

- Operaciones: SUMA, RESTA, AND, OR, NOT, XOR, Complemento a dos, Shift Left
- Reutilice la mayor cantidad de módulos posibles.
- Respalde sus decisiones y proceso de diseño con las herramientas y técnicas vistas en la materia, de tal
    manera que esto se vea adecuadamente plasmado en el informe.
