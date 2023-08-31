program add
    use :: omp_lib
    use, intrinsic :: iso_fortran_env
    implicit none
    integer(kind=int64) :: N = 100000000
    real(kind=real64) :: beta = 2.0
    real(kind=real64), dimension(:), allocatable :: A, B, C
    integer(kind=int64) :: i

    allocate(A(N),B(N),C(N))
    A = 1.0
    B = 2.0

    !$omp parallel &
    !$omp shared ( A, B, C ) &
    !$omp private ( i, beta )
    !$omp do
    do i=1,N
        C(i) = A(i) + beta*B(i)
    end do
    !$omp end do
    !$omp end parallel
    print *, C(10)  ! prevent code deletion by compiler in -O3
end program add
