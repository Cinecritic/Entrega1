## 🔐 Seguridad y buenas prácticas
- Se creó un **usuario dedicado `biblioteca`** con privilegios limitados.
- **No se usó** `SYSTEM`, `SYS` ni el modo `SYSDBA` para operaciones de la aplicación.
- `SYSDBA` es un rol exclusivo para administradores de base de datos (inicio/detención de Oracle), **no para desarrollo de apps**.

## 📌 Credenciales de conexión
- **Usuario**: `biblioteca`
- **Contraseña**: `oracle`
- **URL JDBC**: `jdbc:oracle:thin:@localhost:1521:XE`

## ▶️ Ejecución
1. Ejecutar `crear_usuario.sql` como `SYSTEM`.
2. Ejecutar scripts de tablas y datos como `biblioteca`.
3. Compilar y ejecutar la app Java con el driver JDBC.

## 🚀 Novedades en esta entrega

- 🔍 **Índices**  
  Se crearon índices en `Prestamo.id_socio` y `Prestamo.fecha_prestamo` para optimizar el rendimiento de consultas frecuentes.

- 🔄 **Transacciones**  
  Se implementó manejo correcto de transacciones en operaciones como `INSERT` y `UPDATE` para garantizar la integridad de los datos.

- 💻 **CRUD desde Java**  
  Se añadieron operaciones completas de creación, lectura, actualización y eliminación directamente desde la aplicación.

- 🎯 **Interfaz mejorada**  
  Ahora es más fácil seleccionar libros por número en lugar de ingresar ISBN manualmente, haciendo la experiencia más intuitiva y segura.
