module function_ex1;
  int s;

  function int sum;
    input int a,b;
    sum = a+b;   //return==sum
  endfunction
  
  initial begin
    s=sum(10,5);
    $display("Value of s = %0d",s);
  end
endmodule
//-----------------------------void-----------------------

// module function_ex2;
 
//   function void display;
//     $display("at t=%0t: Welcome to We_LSI",$time);    
//   endfunction
 
//   initial begin
//     #10;
//     display();
//     #20;
//     display();
//   end
// endmodule