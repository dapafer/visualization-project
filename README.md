# 📊 **VISUALIZATION project.**

![portada](https://github.com/dapafer/visualization-project/blob/main/images/data_visualization.png)

Este proyecto tiene como objetivo realizar un proceso ETL, para posteriormente ejecutar un análisis de datos correspondiente a la estructura de la misma, a través de herramientas de visualización de datos. Para ello, se ha utilizado Tableau para generar visualizaciones acordes a lo que se quiere explicar, y finalizaremos sacando conclusiones.

---
## 📌 **Índice.**

- [Contenido.](#cont)
- [Objetivo principal.](#obj_princ)
- [Facturación total.](#fact_tot)
- [Facturación total por Subcategoría.](#fact_tot_sub)
- [Productos por Categoría.](#prod_cat)
- [Conclusiones.](#conc)

---
<a name="cont"/>

### 📉 **Contenido.**

El proyecto cuenta con los siguientes archivos principales:

- `data_to_workbench.ipynb`: notebook donde se realiza la conexión con la base de datos y se insertan las tablas generadas por notebooks anteriores.
- `crea_mod_estructura.sql`: script de SQL donde se realizan las consultas para terminar de crear y modificar la estructura de la base de datos "supermercado".
- `registros_random.sql`: script de SQL donde se realizan consultas de registros de venta en una franja de tiempo determinada.
- `main.txt`: archivo con el enlace a la "historia" en Tableau Public, de las visualizaciones generadas.

---
<a name="obj_princ"/>

### **Objetivo principal.**

Principalmente, vamos a hacer un Análisis Exploratorio de los Datos (EDA), el cual consistirá en el comportamiento de venta de un supermercado, teniendo los datos de una quincena, concretamente del 1 al 15 de mayo de 2023. Con ello, vamos a sacar conclusiones a través de los datos proporcionados de venta, para analizar varios factores, a mencionar:

- Facturación total por fecha
- Facturación total por Categoría.
- Facturación total por Subcategoría.
- Cantidad de productos por Categoría.
- Facturación individual por Categoría.
- Facturación total por Producto.
- Cantidad de venta individual por Categoría.

A continuación, detallamos las visualizaciones más relevantes para poder sacar conclusiones acerca del comportamiento de venta en la mencionada franja de fechas.

---
<a name="fact_tot"/>

### **Facturación total.**

<img src='https://github.com/dapafer/visualization-project/blob/main/images/fact_tot.png'/>

Podemos observar la facturación total desglosada por cada día, de la quincena que hemos elegido como muestra de datos. Aquí se puede observar la falta de datos para ciertos días, siendo domingos y el día 1 de mayo, el cual fue festivo. También observamos que la venta se concentra en ciertos días, siendo similar la venta en:
- Lunes y viernes.
- Martes, miércoles y jueves.
- Sabado.
Existe una excepción en esta muestra, el 15 de mayo, siendo festivo en Madrid capital, pero no en la localidad del supermercado. Observamos por tanto una tendencia mayor de venta en ese día por dicho factor.

---
<a name="fact_tot_sub"/>

### **Facturación total por Subcategoría.**

<img src='https://github.com/dapafer/visualization-project/blob/main/images/fact_tot_sub.png'/>

Aquí tenemos desglosada la facturación total, englobada por categoría, y definida por subcategoría. Se puede observar el peso relevante que tiene la categoría "Verdura", frente a las otras dos, seguida por la de "Fruta", dejando la categoría de "Ensaladas" como menos relevante.

También, podemos generar conclusiones acerca de la cantidad facturada en cada una de las subcategorías. A destacar en "Fruta":
- Fruta tropical.
- Melón y Sandía.
Se puede observar la tendencia de temporalidad hacia frutas de verano, así como una subcategoría que engloba bastantes referencias como es la de "Fruta tropical", siendo esto último observable en otras visualizaciones.

Añadir también el peso relevante de las siguientes subcategorías de "Verdura":
- Cebolla y ajo.
- Otras verduras y hortalizas.
- Patata.
- Tomate.
Aquí se observa el peso relevante de productos de consumo más generalista bajo esta categoría, siendo una tendencia global a lo largo del año, y no limitada a una época concreta.

---
<a name="prod_cat"/>

### **Productos por Categoría.**

<img src='https://github.com/dapafer/visualization-project/blob/main/images/prod_cat.png'/>

*

---
<a name="conc"/>

### ❗️ **Conclusiones.**

*
