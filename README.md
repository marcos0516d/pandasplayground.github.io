# 🐼 Pandas Playground

Plataforma web interactiva para aprender pandas de forma práctica. El usuario escribe código Python en el navegador y lo ejecuta contra tests automáticos.

**Versión**: 1.34.0 | **Última actualización**: Agosto 2026

---

## Tecnologías

| Tecnología | Versión | Función |
|------------|---------|---------|
| HTML5 | - | Estructura |
| CSS3 | - | Estilos y responsive |
| JavaScript | - | Lógica de la aplicación |
| Pyodide | v0.26.4 | Python en WebAssembly |
| Monaco Editor | v0.45.0 | Editor de código (el mismo de VS Code) |
| pandas | - | Librería de análisis de datos |
| jinja2 | - | Requerido por `df.style` (Styler) |
| Service Worker | - | Caché de archivos estáticos |

---

## Estructura del Proyecto

```
Pandas Playground/
├── index.html                    # Página principal
├── principiante.html             # Grid de lecciones principiante
├── intermedio.html               # Grid de lecciones intermedio
├── avanzado.html                 # Grid de lecciones avanzado
├── desafio.html                  # Desafío final (3 retos)
├── lecciones_principiante.html   # Playground principiante
├── lecciones_intermedio.html     # Playground intermedio
├── lecciones_avanzado.html       # Playground avanzado
├── sw.js                         # Service Worker (caché)
├── requirements.txt              # Dependencias Python
├── README.md                     # Esta documentación
└── DOCUMENTACION.md              # Documentación técnica
```

---

## Niveles de Aprendizaje

### Principiante 🟢
- **Color**: Verde (#00d4aa) + Morado (#667eea)
- **Lecciones**: 15
- **Temas**: Importar, set_option, Series, DataFrame, CSV, filtrado, estadísticas, ordenamiento, groupby, limpieza

### Intermedio 🟠
- **Color**: Naranja (#d68910)
- **Lecciones**: 13
- **Temas**: Merge/Join, Pivot Tables, Melt, Time Series, Multi-Index, Stack/Unstack

### Avanzado 🔴
- **Color**: Rojo (#e74c3c)
- **Lecciones**: 13
- **Temas**: Chunking, Performance, Custom Functions, nlargest/nsmallest, Pivot Tables, Explode, Rolling Windows, Crosstab, Styler, Query, Eval, Assign, Pipe

### Desafío 🟣
- **Color**: Morado (#667eea → #764ba2)
- **Retos**: 3
- **Retos**: Limpieza de Datos, Análisis de Ventas, Pipeline Completo

**Total: 54 lecciones + 3 desafíos**

---

## Funcionalidades

### Editor de Código
- Monaco Editor con syntax highlighting para Python
- Números de línea y autocompletado
- Indentación automática
- Atajos: Ctrl+Enter (ejecutar), Ctrl+S (solución)

### Panel de Salida (Jupyter-style)
- Tablas HTML estilizadas para DataFrames y Series
- Detección automática de DataFrames en el scope
- Salida de texto para `print()` y errores
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

### Optimizaciones de Rendimiento
- **Service Worker**: Caché de archivos estáticos para carga instantánea en visitas posteriores
- **Precarga de Pyodide**: Se descarga en index.html en background
- **Carga paralela**: pandas + jinja2 se descargan en paralelo (sin micropip)

---

## Almacenamiento Local

| Clave | Contenido |
|-------|-----------|
| `pandasCompleted` | Lecciones principiante completadas |
| `pandasCompletedIntermedio` | Lecciones intermedio completadas |
| `pandasCompletedAvanzado` | Lecciones avanzado completadas |
| `pandasDesafioCompleted` | Desafíos completados |

---

## Dependencias CDN

```html
<!-- Pyodide - Python en WebAssembly -->
<script src="https://cdn.jsdelivr.net/pyodide/v0.26.4/full/pyodide.js"></script>

<!-- Monaco Editor - Editor de código -->
<script src="https://cdn.jsdelivr.net/npm/monaco-editor@0.45.0/min/vs/loader.js"></script>
```

### Paquetes Pyodide (carga en paralelo)
```javascript
await pyodide.loadPackage(["pandas", "jinja2"]);
```

---

## Instalación

Es un proyecto **100% estático**. Para desarrollo local:

```bash
# Opción 1: Python
python -m http.server 8000

# Opción 2: Node.js
npx serve .
```

Luego abrí `http://localhost:8000` en tu navegador.

**Para producción**: Subí los archivos a Vercel, Netlify, GitHub Pages o cualquier hosting estático.

No requiere:
- Servidor backend
- Node.js
- Python instalado
- Base de datos

Requiere:
- Conexión a internet (primera visita para descargar Pyodide/pandas)
- Navegador moderno (Chrome 80+, Firefox 78+, Safari 14+, Edge 80+)

---

## Cómo Funciona

1. El usuario selecciona un nivel (o el Desafío)
2. Elige una lección del grid
3. Pyodide + pandas + jinja2 se cargan en background
4. Escribe código en el editor Monaco
5. Los DataFrames se muestran como tablas HTML
6. Los `print()` aparecen como texto
7. Ejecuta tests con Ctrl+Enter
8. Si pasa, se marca como completada
9. El progreso se guarda automáticamente en localStorage
10. En visitas posteriores, la caché del Service Worker acelera la carga

---

## Navegadores Soportados

| Navegador | Versión Mínima |
|-----------|----------------|
| Chrome | 80+ |
| Firefox | 78+ |
| Safari | 14+ |
| Edge | 80+ |

---

*Versión 1.34.0 - Agosto 2026*

