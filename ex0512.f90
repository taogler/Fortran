program ex0512
implicit none
  integer score
  character grade

  write(*,*) "Score:"
  read(*,*) score

  select case(score)  !其中score只能是整数、字符及逻辑变量
  case(90:100) ! 90到100分之间     case 的数值必须是固定的常量
    grade='A'
  case(80:89)  ! 80到89分之间      冒号表示数值范围，逗号表示可以放入多个数值
    grade='B'
  case(70:79)  ! 70到79分之间
    grade='C'
  case(60:69)  ! 60到69分之间
    grade='D'
  case(0:59)   ! 0到59分之间    或是 case( :59)   
    grade='E'
  case default ! 其它情形
    grade='?'
  end select
  
  write(*,"('Grade:',A1)") grade
  stop
end
