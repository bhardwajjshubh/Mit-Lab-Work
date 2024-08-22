--Find the area of the circle

set serveroutput on

declare
pi constant number:=3.14;
radius number:=& radius;
area number;
begin
area:=pi*power(radius,2);
dbms_output.put_line('Area of circle is:'||area);
end;
/