CREATE OR REPLACE VIEW vista_prestamos_activos AS
SELECT s.nombre, s.apellido, l.titulo, p.fecha_prestamo
FROM Prestamo p
JOIN Socio s ON p.id_socio = s.id_socio
JOIN Libro l ON p.isbn = l.isbn;