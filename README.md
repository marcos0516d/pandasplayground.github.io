# Pandas Playground

Plataforma web interactiva para aprender pandas de forma practica. El usuario escribe codigo Python en el navegador y lo ejecuta contra tests automaticos.

**Version**: 1.35.0 | **Ultima actualizacion**: Septiembre 2026

---

## Tecnologias

| Tecnologia | Version | Funcion |
|------------|---------|---------|
| HTML5 | - | Estructura |
| CSS3 | - | Estilos y responsive |
| JavaScript | - | Logica de la aplicacion |
| Bootstrap | v5.3.3 | Responsive mobile nav, tabs y layout |
| Pyodide | v0.26.4 | Python en WebAssembly |
| Monaco Editor | v0.45.0 | Editor de codigo (el mismo de VS Code) |
| pandas | - | Libreria de analisis de datos |
| jinja2 | - | Requerido por `df.style` (Styler) |
| Service Worker | - | Cache de archivos estaticos y paquetes Python |

---

## Estructura del Proyecto

```
Pandas Playground/
├── index.html                    # Pagina principal
├── principiante.html             # Grid de lecciones principiante
├── intermedio.html               # Grid de lecciones intermedio
├── avanzado.html                 # Grid de lecciones avanzado
├── desafio.html                  # Desafio final (3 retos)
├── lecciones_principiante.html   # Playground principiante
├── lecciones_intermedio.html     # Playground intermedio
├── lecciones_avanzado.html       # Playground avanzado
├── png_pandas.png                # Logo de Pandas (boton responsive)
├── sw.js                         # Service Worker (cache + paquetes Python)
├── vercel.json                   # Configuracion Vercel (estatico)
├── .vercelignore                 # Exclusiones Vercel
├── requirements.txt              # Dependencias Python
├── README.md                     # Esta documentacion
└── DOCUMENTACION.md              # Documentacion tecnica
```

---

## Niveles de Aprendizaje

### Principiante
- **Color**: Verde (#00d4aa) + Morado (#667eea)
- **Lecciones**: 14
- **Temas**: Importar, set_option, Series, DataFrame, CSV, filtrado, estadisticas, ordenamiento, groupby, limpieza

### Intermedio
- **Color**: Naranja (#d68910)
- **Lecciones**: 13
- **Temas**: Merge/Join, Pivot Tables, Melt, Time Series, Multi-Index, Stack/Unstack

### Avanzado
- **Color**: Rojo (#e74c3c)
- **Lecciones**: 13
- **Temas**: Chunking, Performance, Custom Functions, nlargest/nsmallest, Pivot Tables, Explode, Rolling Windows, Crosstab, Styler, Query, Eval, Assign, Pipe

### Desafio
- **Color**: Morado (#667eea -> #764ba2)
- **Retos**: 3
- **Retos**: Limpieza de Datos, Analisis de Ventas, Pipeline Completo

**Total: 40 lecciones + 3 desafios**

---

## Funcionalidades

### Editor de Codigo
- Monaco Editor con syntax highlighting para Python
- Numeros de linea y autocompletado
- Indentacion automatica
- Atajos: Ctrl+Enter (ejecutar), Ctrl+S (solucion)

### Panel de Salida (Jupyter-style)
- Tablas HTML estilizadas para DataFrames y Series
- Deteccion automatica de DataFrames en el scope
- Salida de texto para `print()` y errores
- Colores ANSI (errores en rojo)
- Boton para limpiar

### Sistema de Tests
- Validacion en tiempo real
- Mensajes de error descriptivos
- Contador de tests pasados
- Auto-avance al siguiente paso

### Guia Informativa
- Documentacion completa por nivel
- Ejemplos diferentes a las soluciones
- Accesible desde cualquier leccion
- Enlace directo a documentacion de pandas

### Progreso
- Guarda en localStorage
- Indicadores visuales por nivel
- Persiste entre sesiones

### Responsive (Mobile)
- **Bootstrap 5.3.3** en todas las paginas de lecciones
- **Mobile Nav**: 3 tabs (Instrucciones, Editor, Resultado)
- **Animacion de paneles**: Editor y Resultado se deslizan hacia arriba
- **FAB buttons**: Guia y Solucion en esquina inferior derecha (48x48px)
- **Boton Pandas**: Logo de 205x205px con 50% opacidad
- **Header adaptativo**:
  - Botones de Test/Reset: 40x40px, se deslizan desde la derecha al activar tabs Editor/Resultado
  - Boton Volver: se posiciona donde estaria el Test en tab Instrucciones, vuelve al header en tabs Editor/Resultado
  - Icono minimalista `←` en responsive
- **Tab Resultado**: Muestra editor + panel de salida juntos

### Optimizaciones de Rendimiento
- **Service Worker**: Cache de archivos estaticos + paquetes Python (pandas, jinja2, numpy, .whl)
- **Cache-first**: Pyodide y Monaco desde cache
- **Precarga de Pyodide**: Se descarga en index.html en background
- **Carga paralela**: pandas + jinja2 se descargan en paralelo (sin micropip)

---

## Almacenamiento Local

| Clave | Contenido |
|-------|-----------|
| `pandasCompleted` | Lecciones principiante completadas |
| `pandasCompletedIntermedio` | Lecciones intermedio completadas |
| `pandasCompletedAvanzado` | Lecciones avanzado completadas |
| `pandasDesafioCompleted` | Desafios completados |

---

## Dependencias CDN

```html
<!-- Bootstrap 5.3.3 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Pyodide - Python en WebAssembly -->
<script src="https://cdn.jsdelivr.net/pyodide/v0.26.4/full/pyodide.js"></script>

<!-- Monaco Editor - Editor de codigo -->
<script src="https://cdn.jsdelivr.net/npm/monaco-editor@0.45.0/min/vs/loader.js"></script>
```

### Paquetes Pyodide (carga en paralelo)
```javascript
await pyodide.loadPackage(["pandas", "jinja2"]);
```

---

## Instalacion

Es un proyecto **100% estatico**. Para desarrollo local:

```bash
# Opcion 1: Python
python -m http.server 8000

# Opcion 2: Node.js
npx serve .
```

Luego abi `http://localhost:8000` en tu navegador.

**Para produccion**: Subi los archivos a Vercel, Netlify, GitHub Pages o cualquier hosting estatico.

No requiere:
- Servidor backend
- Node.js
- Python instalado
- Base de datos

Requiere:
- Conexion a internet (primera visita para descargar Pyodide/pandas)
- Navegador moderno (Chrome 80+, Firefox 78+, Safari 14+, Edge 80+)

---

## Como Funciona

1. El usuario selecciona un nivel (o el Desafio)
2. Elige una leccion del grid
3. Pyodide + pandas + jinja2 se cargan en background
4. Escribe codigo en el editor Monaco
5. Los DataFrames se muestran como tablas HTML
6. Los `print()` aparecen como texto
7. Ejecuta tests con Ctrl+Enter
8. Si pasa, se marca como completada
9. El progreso se guarda automaticamente en localStorage
10. En visitas posteriores, la cache del Service Worker acelera la carga

---

## Navegadores Soportados

| Navegador | Version Minima |
|-----------|----------------|
| Chrome | 80+ |
| Firefox | 78+ |
| Safari | 14+ |
| Edge | 80+ |

---

*Version 1.35.0 - Septiembre 2026*
