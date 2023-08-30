config const n : int = 1000;

var beta : real = 2.0;
var A : [0..<n] real = 1.0;
var B : [0..<n] real = 2.0; 
var C : [0..<n] real;  // will compute C = A + beta*B

for i in 0..<n {
    C[i] = A[i] + beta*B[i];
}
