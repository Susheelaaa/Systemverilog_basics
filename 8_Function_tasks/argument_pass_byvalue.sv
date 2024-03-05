//----------------------argument pass by value------------
if any changes to arguments within the subroutine, those changes will not be visible outside the subroutine.
module pass_by_value;
  int x,y,z;
  function int sum(int x,y);
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