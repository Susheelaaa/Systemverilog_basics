//---------------------NESTED PACKAGE EXAMPLE----------------------
package pkg_1;
  int data = 5;
  int id_A = 1;

  function pkg_funct();
    $display("pkg_1: Inside pkg_funct, data = %0d, id_A = %0d", data, id_A);
  endfunction
endpackage

package pkg_2;
  import pkg_1::*;
  int data = 10;
  int id_B = 2;

  function pkg_funct();
    $display("pkg_2: Inside pkg_funct, data = %0d, id_B = %0d", data, id_B);
  endfunction
endpackage

package pkg_3;
  import pkg_2::*;
  int data = 15;
  int id_C = 3;

  function pkg_funct();
    $display("pkg_3: Inside pkg_funct, data = %0d, id_C = %0d", data, id_C);
  endfunction
endpackage

//-------------------------------
// import pkg_1::*;
// import pkg_2::*;
// import pkg_3::*;
import pkg_3::*;
module nested_pkg;
  initial begin
    pkg_1::pkg_funct();
    pkg_2::pkg_funct();
    pkg_3::pkg_funct();
  end
endmodule
//----------------------------------------