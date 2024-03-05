//--------------packed structure----------------------------------
module struct_example;
  typedef struct packed {
   // string  a="hii";
  // real a=5;
 // The data type of a packed struct/union member must be a SystemVerilog integral type.real,shortreal,string,unpacked array/structure are not allowed
    bit[31:0] salary;
    int id;
 
  } employee;
    
  initial begin
    employee emp1, emp2;
    emp1.salary = 'h10000;
    emp1.id     = 'd1234;
    $display("EMP 1: %p", emp1);
    
    emp2.salary = 'h12000;
    emp2.id     = 'd4321;
    $display("EMP 2: %p", emp2);
  end
endmodule