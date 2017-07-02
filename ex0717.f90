! 声明可变大小的数组
! 1. integer, allocatable :: a(:)  ! 声明一个一维数组，二维数组则为 a(:,:)
! 2. allocate(a(x))  !配置内存空间,这里x由用户输入
! 3. deallocate(a)   !最后释放内存空间

program  ex0717
implicit none
  integer :: size, error=0
  integer, parameter :: one_mb=1024*1024 ! 1MB=1024*1KB=1024*1024B
 ! integer, parameter :: one_gb=1024*1024*1024
  character, allocatable ::  a(:)

  do while( .true. )
    size=size+one_mb ! 一次增加1MB个字符,也就是1MB的内存空间
   ! size=size+one_gb ! 一次增加1GB个字符,也就是1GB的内存空间
    allocate( a(size), stat=error )
    if ( error/=0 ) exit
    write(*,"('Allocate ',I10, ' bytes')") size
	write(*,"(F10.2,' MB used')") real(size)/real(one_mb)
	!write(*,"(F10.2,' GB used')") real(size)/real(one_gb)
    deallocate( a )
  end do

  stop
end
