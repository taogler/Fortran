!当需要共享的变量不多，且只有少数几个程序使用，就使用参数
!当需要共享大笔数据，或是多个不同程序使用，就使用全局变量
!全局变量设置初值需用 block data 命令
!使用 common 需注意两点
!  1.变量的类型
!  2.变量的位置
 
program ex0810
implicit none
  integer :: a,b
  integer :: c,d
  common a,b        ! 定义a,b是全局变量中的第1及第2个变量
  common /group1/ c ! 变量c 放在 group1 这个区间
  common /group2/ d ! 变量归类，放在彼此独立的common区间中
  a=1
  b=2
  c=10
  d=20
  call ShowCommon()
  call showgroup1()
  call showgroup2()
  stop
end

subroutine ShowCommon()
implicit none
  integer :: num1, num2
 ! integer :: a(2)
  common num1, num2 ! 定义num1,num2是全局变量中的第1及第2个变量
 ! common a  !把数组 a放在全局变量中
  write(*,*) num1, num2  ! 1  2  (地址对应共享数据)
 ! write(*,*) a(1),a(2)
  return
end

subroutine showgroup1()
implicit none
  integer :: num1
  common /group1/ num1 !对应 group1 中的第1个变量c 
  write(*,*) num1  ! 10
  return
end

subroutine showgroup2()
implicit none
  integer :: num1
  common /group2/ num1 !对应 group2 中的第1个变量d
  write(*,*) num1  ! 20
  return
end

