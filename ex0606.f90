program ex0606
implicit none
  integer :: dest = 9
  integer floor

  do floor=1, dest
    if ( floor==4 ) cycle  ! cycle 命令后所有代码直接跳回循环开头进行下一次循环
	write(*,*) floor
  end do

  stop
end
