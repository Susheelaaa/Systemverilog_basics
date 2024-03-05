//-------------------NAME_COLLISION-------------------------
package clr;
typedef enum bit{green,yellow}color1;
endpackage

import clr::*;

module name_collision;

typedef enum bit {green,yellow}color2;
  initial begin
  
    color1 c1=color1'(green);
   // color1 c1 = clr::green;//explicitely import
    //color1 c1 = green;
    color2 c2 = green;
    $display("c1=%0d \t c2=%0d",c1,c2);
  end
endmodule