! 赋初值
! data(a(i), i=2,4)/2,3,4/     !隐含式循环， a(2)=2,a(3)=3,a(4)=4
!integer :: a(3)=(/ 1,2,3 /)  !注意括号跟除号之间不能有空格，但不能使用以上隐含式循环,或如下全部赋值
!integer :: a(5)=(/ 1, (2,i=2,4),5 /)   ! 1 2 2 2 5
!integer :: a(5)=5    ! 5 5 5 5 5
 
program ex0706
implicit none
  integer, parameter :: students = 5
  integer :: student(students) = (/ 80, 90, 85, 75, 95 /) !数组赋初值
  integer i

  do while( .true. )
    write(*,*) "Query:"
    read(*,*) i
    if ( i<=0 .or. i>students ) exit
    write(*,*) student(i)
  end do

  stop
end
