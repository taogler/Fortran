! 数组参数：传递数组参数时，实际上是传递数组元素当中的某一个内存地址,注意不要超过它的实际范围, 多维数组传递时，只有最后一维（最高维）可以不赋值大小
! 数组通常在声明时使用常量赋值其大小，但作为函数中的数组参数时，可以变量赋值其大小，甚至不去赋值
! 因为数组在进入子程序之前就配置到内存空间中

program ex0816
implicit none
  integer :: a(5) = (/ 1,2,3,4,5 /)
  character(len=20) :: str="Hello, Fortran 95!"
  call ShowOne(a(1))   ! 传入a(1), 也就是传入数组a第1个元素的内存地址
  call ShowArray5(a)  
  call ShowArray3(a)  
  call ShowArray3( a(2) ) ! 传入a(2), 也就是传入数组a第2个元素的内存地址
  call ShowArray2X2(a)  
  call showstring(str)     ! 送出字符串开头地址
  call showstring(str(8:)) ! 送出字符串第8 个字符的地址 
  stop
end

subroutine ShowOne(num)
implicit none
  integer :: num ! 只取出参数地址中的第1个数字
  write(*,*) num
  return
end

subroutine ShowArray5(num)
implicit none
  integer :: num(5) ! 取出参数地址中的前5个数字,当成数组来使用
  write(*,*) num
  return
end

subroutine ShowArray3(num)
implicit none
  integer :: num(3) ! 取出参数地址中的前3个数字,当成数组来使用
  write(*,*) num
  return
end

subroutine ShowArray2X2(num)
implicit none
  integer :: num(2,2) ! 取出参数地址中的前4个数字,当成2X2数组来使用
  write(*,*) num(2,1), num(2,2)
  return
end

subroutine showstring(str)
implicit none 
  character(len=*) :: str    ! * 表示不指定大小
  write(*,*) len_trim(str)
  write(*,*) str
  return 
end
