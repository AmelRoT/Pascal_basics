program derivative;

var 
f_prime,x : double; 
h : double;  

function f(x: double ) : double; 
    begin 
        f :=x*x;   

    end;


begin 
    h := 0.00001;
    x := 6;
    f_prime := (f(x+h)-f(x))/h;
    writeln(f_prime);
end.