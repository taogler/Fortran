! 一维数组，数组可以一次声明出一长串同样数据类型的变量
! 声明方式：1. integer a(10)
!           2. integer, dimension(10) :: a
!           3. integer a  ! fortran 77 的做法，先声明 a是整型，再声明 a为大小为10的数组
!              dimension a(10)

! 数组的索引值默认从 1 开始，但也可另类声明
! integer a(0:3)    可以使用a(0),a(1),a(2),a(3)这4个元素
! integer a(-1:1)   可以使用a(-1),a(0),a(1) 这3个元素
! integer a(3,0:3)  integer(2:3,-1:3)
program ex0701
implicit none
  integer, parameter :: students = 5  !只能使用常数来赋值数组的大小
  integer :: student(students)
  integer i

  do i=1, students
    write(*,"('Number ',I2)") i
    read(*,*) student(i)
  end do

  do while( .true. )
    write(*,*) "Query:"
    read(*,*) i
    if ( i<=0 .or. i>students ) exit
    write(*,*) student(i)
  end do

  stop
end
