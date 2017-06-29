! 声明：在程序代码中，程序员向编译器要求预留一些存放数据的内存空间
! 声明的位置应该放在程序代码的可执行描述之前，出现数值计算和输入输出命令时，就不能再声明变量
! integer 整型，  默认 4 bytes,          integer(kind=4)  INTEGER*4  INTEGER(4)  integer :: 
! real    浮点型，默认(单精度) 4 bytes,  real(kind=4)     REAL*4     REAL(4)     real ::
!         单精度浮点数的有效位数6位，双精度浮点数的有效位数15位 
! character 字符及字符串，character(len=10)   CHARACTER(10)  CHARACTER*10  CHARACTER*(10)
!           用双引号封装字符串时，可以在字符串中任意使用单引号，输出双引号，则要连续使用2个双引号
!           用单引号封装字符串时，可以在字符串中任意使用双引号，输出单引号，则要连续使用2个单引号

program ex0404
  integer a    ! 声明一块保存整数的内存空间，以 a 表示
  integer a1, a2
  real  b
  real  c
  real  d
  character(10) e
  character(10) f
  character(20) g
  character(len=20) string
  character(10) substring
  logical h,i

  read(*,*)   a, a1, a2  !输入时用 逗号或是空格 区分数据,  若是输入带有空格的字符串，则会被截断，故使用格式化输入输出
  write(*,*) "a+a1+a2=",a+a1+a2

  b=2.5+6.0/5.0
  write(*,*) "b=2.5+6.0/5.0=",b
  write(*,*) a, "+", b, "=", a+b

  c=1.5+2/3
  write(*,*) "c=1.5+2/3=",c
  write(*,*) real(a1)/real(a2)   ! 类型转换  int()  real()
  d=3.14159/2.0
  write(*,*) "sin(",d,")=", sin(d)

  e='Hello'
  f="World"
  g=e//f    !  符号 // 可以连接两个字符串
  write(*,*) e, f
  write(*,*) g

  write(*,*) "That's ""right""!"
  write(*,*) 'That''s "right"!'

  string="Good morning"
  write(*,*) string
  string(6:20)="evening"  !重新设置字符串中第6~20个字符
  write(*,*) string

  write(*,*) ichar('A')   !字符 A  的 ASCII 码
  write(*,*) char(97)     !ASCII 码为97 的字符
  write(*,*) len(string)  !输出字符串string声明时的长度
  write(*,*) len_trim(string) !输出字符串string的实际长度
  substring="evening"
  write(*,*) index(string,substring)  !子串在母串的位置信息
  
  h=.true.   !设置逻辑变量的值
  i=.false.
  write(*,*) h, i
stop
end
