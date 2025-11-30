CREATE OR REPLACE TRIGGER devolver_libro
AFTER DELETE ON Prestamo
FOR EACH ROW
BEGIN
    UPDATE Libro
    SET disponible = 'S'
    WHERE isbn = :OLD.isbn;
END;
/