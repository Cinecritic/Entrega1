CREATE OR REPLACE PROCEDURE registrar_prestamo(
    p_id_socio IN NUMBER,
    p_isbn     IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Prestamo (id_prestamo, id_socio, isbn, fecha_prestamo)
    VALUES (seq_prestamo.NEXTVAL, p_id_socio, p_isbn, SYSDATE);

    UPDATE Libro
    SET disponible = 'N'
    WHERE isbn = p_isbn;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/