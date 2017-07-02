program ex0602
implicit none
  integer, parameter :: limit=10  ! 计数器的上限
  integer counter      ! 计数器
  integer :: ans = 0   ! 拿来累加使用

! DO 循环， 初值 终值 增量(缺省默认为1)
  do counter=2, limit ,2   
    ans = ans + counter
  end do
  write(*,*) ans

  stop
end
