! ���ݺ���
program ex0821
  implicit none
  real, external  :: func ! ����func�Ǹ��Զ��庯��
  real, intrinsic :: sin  ! ����sin�ǿ⺯��
        external sub1     ! ����sub1���ӳ���
  
  call ExecFunc(func)
  call ExecFunc(sin)
  call sub(sub1)

  stop
end program

subroutine ExecFunc(f)
  implicit none
  real, external :: f ! ��������f�Ǹ�����
  write(*,*) f(1.0)   ! ִ�д���ĺ���f
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
  external sub_name ! ��������sub_name �Ǹ��ӳ��� 
  call sub_name
  return
end subroutine

subroutine sub1()
  implicit none
  write(*,*) "This is sub1."
end subroutine
