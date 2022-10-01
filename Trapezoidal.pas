program Trapezoidal; 

var 
a : double;
b,h : double; 
n: integer = 200;
i : integer;   
x_delta : array [1..201] of double; 
Area: double;

function f(x : double ) : double;
        
    begin 
        f := (x*x);  
    end;  

begin 
a := 0;
b := 2;
h := (b-a)/n;
Area := 0; 
for i := 1 to (n+1)do

begin 

    if(i=1) then 
        begin 
            x_delta[i] := a; 
        end 
    else 
        begin 
             x_delta[i] := x_delta[i-1]+h;
        end; 
    writeln(x_delta[i]);

end; 

    for i:=1 to (n+1) do 
        begin 

            if(i=1) then 
            begin 
                Area := Area+(h/2*(f(x_delta[i])));
            end 
            else if(i=(n+1)) then 
            begin 
                Area := Area+(h/2*(f(x_delta[i])));

            end
        else 
            begin 
               Area := Area+(h*(f(x_delta[i])));
            end; 
        end; 
    writeln('Area is : ', Area);

end. 