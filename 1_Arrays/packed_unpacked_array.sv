////-------------------Packed array---------------------------

module packed_array_example;
 // bit [2:0][3:0] array = {4'h2, 4'h4, 4'h6};
  bit [2:0][3:0] array = {12'h5ff};

  initial begin
    foreach (array[i]) begin 
      $display("array[%0h][%0h] = %0h", i,j, array[i][j]);
    end
  end
endmodule

////-----------------------Unpacked array---------------------
// module unpacked_array_example;
//   int array [3][4] = '{'{1, 2, 3, 4},
//                       '{5, 6, 7, 8},
//                       '{9, 10, 11, 12}
//                       };
//   initial begin
//     foreach (array[i,j]) begin
//       $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
//     end
//   end
// endmodule

////-----------------Combination of a packed and unpacked array-----------

// module array_example;
// bit [4:0] array[2:0][1:0] = '{'{5'h5, 5'h1},
//                               '{5'h10, 5'h2},
//                               '{5'h15, 5'h3}
//                                };
//     initial begin
// //   bit [0:1][0:1] array[0:2][0:1] = '{{20,1},
// //                                      {10, 12},
// //                                      {15,2}
// //                                       };

//     foreach (array[i,j]) begin
//       $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
//     end
//   end
// endmodule