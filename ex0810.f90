!����Ҫ����ı������࣬��ֻ��������������ʹ�ã���ʹ�ò���
!����Ҫ���������ݣ����Ƕ����ͬ����ʹ�ã���ʹ��ȫ�ֱ���
!ȫ�ֱ������ó�ֵ���� block data ����
!ʹ�� common ��ע������
!  1.����������
!  2.������λ��
 
program ex0810
implicit none
  integer :: a,b
  integer :: c,d
  common a,b        ! ����a,b��ȫ�ֱ����еĵ�1����2������
  common /group1/ c ! ����c ���� group1 �������
  common /group2/ d ! �������࣬���ڱ˴˶�����common������
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
  common num1, num2 ! ����num1,num2��ȫ�ֱ����еĵ�1����2������
 ! common a  !������ a����ȫ�ֱ�����
  write(*,*) num1, num2  ! 1  2  (��ַ��Ӧ��������)
 ! write(*,*) a(1),a(2)
  return
end

subroutine showgroup1()
implicit none
  integer :: num1
  common /group1/ num1 !��Ӧ group1 �еĵ�1������c 
  write(*,*) num1  ! 10
  return
end

subroutine showgroup2()
implicit none
  integer :: num1
  common /group2/ num1 !��Ӧ group2 �еĵ�1������d
  write(*,*) num1  ! 20
  return
end

