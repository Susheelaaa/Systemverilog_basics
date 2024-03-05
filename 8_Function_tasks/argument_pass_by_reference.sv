//----------------------argument pass by reference------------
As the argument within a subroutine is pointing to an original argument, any changes to the argument within subroutine will be visible outside.

module pass_by_reference;
  int x,y,z;
  function int sum(ref int x,y);//const
    x = x+y;//x=50
    y = x+y;//y=80
    return x+y; //((x+y)+y) =130
  endfunction

  initial begin
    x = 20;
    y = 30;
    $display("x = %0d\ny = %0d\n",x,y);
    z = sum(x,y);
    $display("x = %0d\ny = %0d\nz = %0d\n",x,y,z);
   
  end
endmodule