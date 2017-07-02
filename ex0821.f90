! 传递函数
program ex0821
  implicit none
  real, external  :: func ! 声明func是个自定义函数
  real, intrinsic :: sin  ! 声明sin是库函数
        external sub1     ! 声明sub1是子程序
  
  call ExecFunc(func)
  call ExecFunc(sin)
  call sub(sub1)

  stop
end program

subroutine ExecFunc(f)
  implicit none
  real, external :: f ! 声明参数f是个函数
  write(*,*) f(1.0)   ! 执行传入的函数f
  return
end 

real function func(num)
  implicit none
  real :: num
  func = num*2
  return
end function

subroutine sub(sub_name)
  implicit none
  external sub_name ! 声明参数sub_name 是个子程序 
  call sub_name
  return
end subroutine

subroutine sub1()
  implicit none
  write(*,*) "This is sub1."
end subroutine
