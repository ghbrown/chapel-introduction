
## An Introduction to the Chapel Language

Some simple programs that use base (`src/serial/`) and
parallel (`src/parallel/`) language features, as well as an accompanying presentation.

The folder `src/parallel/triad` contains code implementing the "triad" computation
`C = A + beta*B` using multiple tasking/shared memory schemes in Chapel, and one in
Fortran with OpenMP.

The script `get_chpl.sh` adds an alias for the Chapel compiler if it is adjacent to
a Singularity image of Chapel (one can be built from
[this Docker image](https://hub.docker.com/r/chapel/chapel)).
Once the Singularity image is in place, simply `source get_chpl.sh`.
