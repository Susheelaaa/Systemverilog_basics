//-------------------------conversion methods------------------------------
    module tb;
  string my_string;
  int i;
 real j;
  initial
    begin
     my_string="3459ah";
      $display("string is=%0s %0d",my_string,my_string);
      i=my_string.atoi();
      $display("%0d",i);
      i=my_string.atohex();
      $display("%0h",i);
      i=my_string.atooct();
      $display("%0o",i);
      i=my_string.atobin();
      $display("%0b",i);
      j=my_string.atoreal();
      $display("j=%0f",j);
       i=65987;
      j=23.87;
      $display("string is=%0s",my_string);
      my_string.itoa( i);
      $display("%0s",my_string);
      my_string.hextoa( i);
      $display("%0s",my_string);
      my_string.octtoa( i);
      $display("%0s",my_string);
      my_string.bintoa( i);
      $display("%0s",my_string);
      my_string.realtoa( j);
      $display("%0s",my_string);
    end      
endmodule
//-----------------------------------------
// module strings_ex2();

// string name = "Amar";
// string cname;
// string comp;
// int i;
// initial begin
//     $display("Length of the string is %0d", name.len());
//     name.putc(3,"n");
//   $display("name.putc(3,n): %0s",name);
//     $display("name.getc(3): %0s",name.getc(3));
//   $display("name.substr(1,3): %s",name.substr(1,3));
//     $display("to uppercase: %0s",name.toupper());
//     $display("to lowercase: %0s",name.tolower());
//     comp="Amar";name="Amar";
//     cname=name.compare(comp)?"Unequal":"Equal";
//     i=name.compare(comp);
//   $display("Cname=%0s i=%0d",cname,i);
// end
// endmodule