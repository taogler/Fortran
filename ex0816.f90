! ��������������������ʱ��ʵ�����Ǵ�������Ԫ�ص��е�ĳһ���ڴ��ַ,ע�ⲻҪ��������ʵ�ʷ�Χ, ��ά���鴫��ʱ��ֻ�����һά�����ά�����Բ���ֵ��С
! ����ͨ��������ʱʹ�ó�����ֵ���С������Ϊ�����е��������ʱ�����Ա�����ֵ���С��������ȥ��ֵ
! ��Ϊ�����ڽ����ӳ���֮ǰ�����õ��ڴ�ռ���

program ex0816
implicit none
  integer :: a(5) = (/ 1,2,3,4,5 /)
  character(len=20) :: str="Hello, Fortran 95!"
  call ShowOne(a(1))   ! ����a(1), Ҳ���Ǵ�������a��1��Ԫ�ص��ڴ��ַ
  call ShowArray5(a)  
  call ShowArray3(a)  
  call ShowArray3( a(2) ) ! ����a(2), Ҳ���Ǵ�������a��2��Ԫ�ص��ڴ��ַ
  call ShowArray2X2(a)  
  call showstring(str)     ! �ͳ��ַ�����ͷ��ַ
  call showstring(str(8:)) ! �ͳ��ַ�����8 ���ַ��ĵ�ַ 
  stop
end

subroutine ShowOne(num)
implicit none
  integer :: num ! ֻȡ��������ַ�еĵ�1������
  write(*,*) num
  return
end

subroutine ShowArray5(num)
implicit none
  integer :: num(5) ! ȡ��������ַ�е�ǰ5������,����������ʹ��
  write(*,*) num
  return
end

subroutine ShowArray3(num)
implicit none
  integer :: num(3) ! ȡ��������ַ�е�ǰ3������,����������ʹ��
  write(*,*) num
  return
end

subroutine ShowArray2X2(num)
implicit none
  integer :: num(2,2) ! ȡ��������ַ�е�ǰ4������,����2X2������ʹ��
  write(*,*) num(2,1), num(2,2)
  return
end

subroutine showstring(str)
implicit none 
  character(len=*) :: str    ! * ��ʾ��ָ����С
  write(*,*) len_trim(str)
  write(*,*) str
  return 
end
