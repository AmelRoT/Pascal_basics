program Jacobian_third;  

    type 
    Array1 = array [1..3] of double; 

    var 
    x1,y1,z1 : double; 
    h : double;
    Jacobian : array [1..3,1..3] of double;
    i,j,m : integer; 
    function f(x : double ; y : double ; z : double) : Array1;
        begin 
            f[1] := (x*x)+y+z; 
            f[2] := 2*x+y+z; 
            f[3] := x+2*y+z; 

        end;


    function df(x1,x2,x3: double; m:integer ) : Array1;  
        begin 
            df[1]  := (f(x1+h,x2,x3)[m]- f(x1,x2,x3)[m])/(h);
            df[2]  := (f(x1,x2+h,x3)[m]- f(x1,x2,x3)[m])/(h);
            df[3]  := (f(x1,x2,x3+h)[m]- f(x1,x2,x3)[m])/(h);

        end; 

    begin 
    h := 0.0001;
    x1:= 10; 
    y1 := 20; 
    z1 := 30; 
    m := 0; 
    for i := 1 to 3 do 
        begin 
            for j := 1 to 3 do 
                begin 
                    m := j; 
                    Jacobian[j,i] := df(x1,y1,z1,m)[i];
                end 

        end; 

    for i := 1 to 3 do 

        begin 
            for j := 1 to 3 do 
                begin 
                    write(Jacobian[i,j],' ');
                end;
                writeln(); 

        end; 
   //writeln(f(x1,y1,z1)[2]);  // first the inputs and then the array -> f(x,y,z) [array_number] for the access 
    

    // Format of providing Jacobian matrix ---->

    //  [     a[1][1]            a[1][2]            a[1][3]         ]
    //  [     a[2][1]            a[2][2]            a[2][3]         ]
    //  [     a[3][1]            a[3][2]            a[3][3]         ]


end. 