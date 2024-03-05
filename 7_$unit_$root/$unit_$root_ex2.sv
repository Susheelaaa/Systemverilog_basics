//------------------------------$unit and $root----------------------------------
// // --------- Compilation unit 1 ----------

package pkg1;
  function void print;
    $display("pkg1_comp1");
  endfunction 
endpackage

// // // --------- Compilation unit 2 ----------

package pkg2;
  function void print;
    $display("pkg2_comp2");
  endfunction
endpackage 

function void print;
  $display("unit1");
endfunction 

module mod3();
 function void print;
   $display("mod3");
 endfunction 
endmodule

function void sprint;
  $display("unit2");
endfunction 

module mod2();
  mod3 mod1(); // same name as top-level module
  function void print;
    $display("mod2");
  endfunction
  initial begin
    #5;
    $display($time," From initial block of module mod2");
    $root.mod1.print(); 
    mod1.print();       
    pkg1::print();      
    pkg2::print();      
    $unit::print();
    $unit::sprint();     
      
  end
endmodule 

module mod1(); // top-level module
  mod2 m2();
  function void print;
    $display("mod1");
  endfunction 
  initial begin
    #1;
    $display($time," From initial block of module mod1");
    print();            
    $root.mod1.print(); 
    pkg1::print();      
    pkg2::print();      
    m2.print();         
    m2.mod1.print();    
    $unit::print();    
    $unit::sprint();
  end
endmodule
//--------------------------------------------------

