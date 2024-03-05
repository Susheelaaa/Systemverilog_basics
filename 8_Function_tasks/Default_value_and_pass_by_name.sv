//---------------default value--------------------------
module default_value;
  int x,y,z;
  function int sum(int x=5,y=10,z=15);//const(use automatic function when u r using const)
    x = x+y+z;
    return x+y; //((x+y)+y) 
  endfunction

  initial begin
    $display(sum());  //sum(,,5))
  end
endmodule
---------------------------------------
module pass_by_name;

  function void display(real x,string y);
    $display("x = %0f, y = %0s",x,y);   
  endfunction

  initial begin
    display(.y("Welcome to We_LSI"),.x(20.23));
  end
endmodule