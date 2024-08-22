SQL> create table circle(radius number(2),area number(5,1),circum number(5,1));

SQL> insert into circle(radius) values(2);
SQL> insert into circle(radius) values(3);
SQL> insert into circle(radius) values(4);


declare
v_radius circle.radius%type;
v_area circle.area%type;
begin
select radius into v_radius from circle where rownum=1;
dbms_output.put_line('Radius='||v_radius);
v_area:=3.14*power(v_radius,2);
update circle set area=v_area where radius=v_radius;
end;
/