//---------------------------static automatic------------------------
module static_automatic;
  
  function static increment_static();
    static int count_A;
    automatic int count_B;
    int count_C;
    
    count_A++;
    count_B++;
    count_C++;
    $display("Static: count_A = %0d, count_B = %0d, count_C = %0d", count_A, count_B, count_C);
  endfunction
  
  function automatic increment_automatic();
    static int count_A;
    automatic int count_B;
    int count_C;
    
    count_A++;
    count_B++;
    count_C++;
    $display("Automatic: count_A = %0d, count_B = %0d, count_C = %0d", count_A, count_B, count_C);
  endfunction
  
  function increment();
    static int count_A;
    automatic int count_B;
    int count_C;
    
    count_A++;
    count_B++;
    count_C++;
    $display("Normal: count_A = %0d, count_B = %0d, count_C = %0d", count_A, count_B, count_C);
  endfunction
  
  initial begin
    repeat(3)increment_static();
    repeat(3)increment_automatic();
    repeat(3)increment();

    //Accessing variables using function
    $display("\nStatic: count_A = %0d", increment_static.count_A);
    $display("Automatic: count_B = %0d", increment_static.count_B);    // Hierarchical reference to automatic variable is not legal.
    $display("Normal: count_C = %0d", increment_static.count_C);
    
  end
endmodule
