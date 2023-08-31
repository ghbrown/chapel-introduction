config const n : int = (100e6 : int);
config const n_tasks : int = here.maxTaskPar;

var beta : real = 2.0;
var A : [0..<n] real = 1.0;
var B : [0..<n] real = 2.0; 
var C : [0..<n] real;  // will compute C = A + beta*B

var b : int = ( ceil(n/n_tasks) : int );
coforall i_t in 0..<n_tasks {
    for i in i_t*b..<max((i_t+1)*b,n) {
             C[i] = A[i] + beta*B[i];
    }
}
