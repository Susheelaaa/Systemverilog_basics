//----------------------$unit and $root--------------

//The only time you need to use $root or $unit is when a local name in the current scope hides a name in a higher level scope.--->single compilation unit

string name = "comp";
//if the identifiers in the compilation unit scope and current scope has different name then $unit/$root is not required.Without $unit also you can print.

module mod();
  string name = "mod";

  task print();
    $display( { "$unit::name-->", $unit::names, "!" } );
    $display( { "name-->", name, "!" } );
    $display( { "$root.mod.name-->", $root.mod.name, "!" } );
  endtask
  
  initial begin
    print();
  end
endmodule
