# 🐼 Pandas Playground

Plataforma web interactiva para aprender pandas de forma práctica. El usuario escribe código Python en el navegador y lo ejecuta contra tests automáticos.

**Versión**: 1.32.5 | **Última actualización**: Agosto 2026

---

## Tecnologías

| Tecnología | Versión | Función |
|------------|---------|---------|
| HTML5 | - | Estructura |
| CSS3 | - | Estilos y responsive |
| JavaScript | - | Lógica de la aplicación |
| Pyodide | v0.25.0 | Python en WebAssembly |
| Monaco Editor | v0.45.0 | Editor de código (el mismo de VS Code) |
| xterm.js | v5.5.0 | Terminal de salida |
| pandas | - | Librería de análisis de datos |

---

## Estructura del Proyecto

```
Pandas Playground/
├── index.html                    # Página principal
├── principiante.html             # Grid de lecciones principiante
├── intermedio.html               # Grid de lecciones intermedio
├── avanzado.html                 # Grid de lecciones avanzado
├── lecciones_principiante.html   # Playground principiante
├── lecciones_intermedio.html     # Playground intermedio
├── lecciones_avanzado.html       # Playground avanzado
├── requirements.txt              # Dependencias Python
├── DOCUMENTACION.md              # Esta documentación
└── pandas_playground_docs.pdf    # Documentación en PDF
```

---

## Niveles de Aprendizaje

### Principiante 🟢
- **Color**: Verde (#00d4aa)
- **Lecciones**: 14
- **Tests**: 43
- **Temas**: Importar, Series, DataFrame, CSV, filtrado, estadísticas, ordenamiento, groupby, limpieza

### Intermedio 🟠
- **Color**: Naranja (#f39c12)
- **Lecciones**: 13
- **Tests**: 39
- **Temas**: Merge/Join, Pivot Tables, Time Series, Multi-Index

### Avanzado 🔴
- **Color**: Rojo (#e74c3c)
- **Lecciones**: 13
- **Tests**: 39
- **Temas**: Chunking, Performance, Custom Functions, Sparse

**Total: 40 lecciones, 121 tests**

---

## Funcionalidades

### Editor de Código
- Monaco Editor con syntax highlighting para Python
- Números de línea y autocompletado
- Indentación automática

### Terminal de Salida
- xterm.js para visualizar resultados
- Captura de `print()` y errores
- Colores ANSI (errores en rojo)
- Botón para limpiar

### Sistema de Tests
- Validación en tiempo real
- Mensajes de error descriptivos
- Contador de tests pasados
- Auto-avance al siguiente paso

### Guía Informativa
- Documentación completa por nivel
- Ejemplos diferentes a las soluciones
- Accesible desde cualquier lección

### Progreso
- Guarda en localStorage
- Indicadores visuales por nivel
- Persiste entre sesiones

---

## Atajos de Teclado

| Atajo | Función |
|-------|---------|
| `Ctrl+Enter` | Ejecutar tests |
| `Ctrl+S` | Mostrar solución |
| `Escape` | Cerrar modal |

---

## Cómo Funciona

1. El usuario selecciona un nivel
2. Elige una lección del grid
3. Escribe código en el editor
4. Los `print()` aparecen en la terminal
5. Ejecuta tests con Ctrl+Enter
6. Si pasa, avanza al siguiente paso
7. El progreso se guarda automáticamente

---

## Instalación

Es un proyecto **100% estático**. Solo necesitas abrir `index.html` en un navegador.

No requiere:
- Servidor backend
- Node.js
- Python instalado
- Base de datos

Requiere:
- Conexión a internet (para cargar dependencias CDN)
- Navegador moderno (Chrome, Firefox, Safari, Edge)

---

## Dependencias CDN

```html
<!-- Pyodide - Python en WebAssembly -->
<script src="https://cdn.jsdelivr.net/pyodide/v0.25.0/full/pyodide.js"></script>

<!-- Monaco Editor - Editor de código -->
<script src="https://cdn.jsdelivr.net/npm/monaco-editor@0.45.0/min/vs/loader.js"></script>

<!-- xterm.js - Terminal de salida -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@xterm/xterm@5.5.0/css/xterm.min.css">
<script src="https://cdn.jsdelivr.net/npm/@xterm/xterm@5.5.0/lib/xterm.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@xterm/addon-fit@0.10.0/lib/addon-fit.min.js"></script>
```

---

## Almacenamiento Local

| Clave | Contenido |
|-------|-----------|
| `pandasCompleted` | Lecciones principiante completadas |
| `pandasCompletedIntermedio` | Lecciones intermedio completadas |
| `pandasCompletedAvanzado` | Lecciones avanzado completadas |

---

## Navegadores Soportados

| Navegador | Versión Mínima |
|-----------|----------------|
| Chrome | 80+ |
| Firefox | 78+ |
| Safari | 14+ |
| Edge | 80+ |

---

## Fuentes de Información

Las lecciones fueron extraídas de la documentación oficial de pandas:

### Principiante
- [10 Minutes to pandas](https://pandas.pydata.org/docs/user_guide/10min.html)
- [Intro to data structures](https://pandas.pydata.org/docs/user_guide/dsintro.html)
- [Essential basic functionality](https://pandas.pydata.org/docs/user_guide/basics.html)
- [IO tools (text, CSV, HDF5)](https://pandas.pydata.org/docs/user_guide/io.html)

### Intermedio
- [Merge, join, concatenate and compare](https://pandas.pydata.org/docs/user_guide/merging.html)
- [Reshaping and pivot tables](https://pandas.pydata.org/docs/user_guide/reshaping.html)
- [Time series / date functionality](https://pandas.pydata.org/docs/user_guide/timeseries.html)
- [MultiIndex / advanced indexing](https://pandas.pydata.org/docs/user_guide/advanced.html)

### Avanzado
- [Scaling to large datasets - Chunking](https://pandas.pydata.org/docs/user_guide/scale.html#use-chunking)
- [Scaling to large datasets - Efficient datatypes](https://pandas.pydata.org/docs/user_guide/scale.html#use-efficient-datatypes)
- [User-Defined Functions (UDFs)](https://pandas.pydata.org/docs/user_guide/user_defined_functions.html)
- [Sparse data structures](https://pandas.pydata.org/docs/user_guide/sparse.html)

---

*Versión 1.32.5 - Agosto 2026*
