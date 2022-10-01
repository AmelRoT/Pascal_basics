// if statements in Pasacal 

program IfStatements;

var
    v1: integer; 
    i,j : integer; 

begin 
    i := 10;
    readln(v1);
    if(i=v1) then 
         begin   // begin followed by end for the block statement and begin with end; when it is finished for the else statement 
        writeln(i);
        writeln(i+1)
        end 
    else if(i>v1) then 
        writeln(v1)

    else 
    begin 
        writeln('Else ');

        for j:= 1 to 20 do 
         begin 
            writeln(j);
         end;
    end; 
end.    
 




