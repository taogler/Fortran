! where 只能出现在数组的设置中
program ex0711
implicit none
  integer :: i
  integer :: a(5)=(/ (i,i=1,5) /)
  integer :: b(5)=0  ! b 和 a 的元素个数相同

  where( a<4 )
    b = 1
  elsewhere
    b = 2
  end where 
  write(*,"(5(I3,1X))") b

  stop
end
