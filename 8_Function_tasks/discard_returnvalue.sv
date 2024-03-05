//--------------Discarding function return value-------------------
//-----------------function call as an expression------------------

module function_ex3;
int s=5;
  function int sum;
    input int a,b;
    return a+b;    
  endfunction
 
  initial begin
    // $display(sum(10,5));
    //$display("Calling function with void");
    // void'(sum(10,5));//Discarding function return value
    s = s * sum(10,5);
    $display(s);

  end
 endmodule