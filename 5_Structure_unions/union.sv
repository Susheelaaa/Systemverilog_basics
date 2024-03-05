//---------------Union-------------------------------------------
module union_example;
  typedef union {
    bit[15:0] salary;// for packed union,members should have the same size:(while using packed union,take bit[31:0]// use questa sim if it not works in EDA)
    integer id;
  } employee;
    
  initial begin
    employee emp;
    emp.salary = 'h800;
    $display("---->salary updated for EMP: %p", emp);
    $display("---->salary:%0h id:%0h",emp.salary,emp.id);
    emp.id = 'd1234;
    $display("---->ID updated for EMP: %p", emp);
    $display("---->salary:%0h id:%0h",emp.salary,emp.id); //Note: Salary information will be lost
   
  end
endmodule
