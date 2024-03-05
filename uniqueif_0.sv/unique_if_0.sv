//refer my youtube videos to see the changes in the code
module unique_if_example;  
  initial begin
    int a, b;
    a = 10;
    b = 20;
      unique0 if(a==b)
      $display("a is equal to b");
    else if(a<b)
      $display("a is less than b");
    else if(a<50)
      $display("a is greater than 50");
//     else 
//       $display("------The else statement-----");
  end
endmodule