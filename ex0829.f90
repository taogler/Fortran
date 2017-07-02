!递归：自己调用自己来执行，递归必要条件为函数中的局部变量在每次调用时都是独立存在的

program  ex0829
  implicit none
  integer :: n
  integer, external :: fact
  write(*,*) 'N='
  read(*,*) n
  write(*, "(I2,'! = ', /, I8)" ) n, fact(n)
  stop
end

recursive integer function fact(n) result(ans)
  !开头加上recursive才可递归调用，设置函数传回值ans来代替原来的fact
  implicit none
  integer, intent(in) :: n  ! 参数属性  in 可读  out 可写  inout 可读可写
  integer, save :: count = 1 !save命令后的变量的生命周期将延伸至整个程序的执行时间
  integer :: localcount, temp  ! 局部变量
    
  localcount = count
  count = count+1
  write(6,"(I2,'th enter, n=',I2)") localcount, n

  if ( n < 0 ) then ! 不合理的输入
	ans = -1        ! 随便设定一个值
    write(6,"(I2,'th exit, n=',I2,' ans=',I8)") localcount, n, ans
	return          ! n不合理, 直接return 
  else if ( n <= 1 ) then
    ans = 1          
    write(6,"(I2,'th exit, n=',I2,' ans=',I8)") localcount, n, ans
    return          ! 不用再向下递归了, return 
  end if
  ! 会执行到这, 代表n>1, 从n*(n-1)!来计算n!
  temp = n-1
  ans = n * fact(temp) 
  write(6,"(I2,'th exit, n=',I2,' ans=',I8)") localcount, n, ans
  return
end function fact
 
