!��ַ���ã�����ʱ��ȥ�Ĳ������ӳ�����յĲ�����ʹ����ͬ���ڴ��ַ����¼����
!��ֵ���ã��޸��ӳ����в������ݣ�����Ӱ�쵽���ô��ı�������
program  ex0804
implicit none
  integer :: a = 1
  integer :: b = 2
  call add(a,b)     ! 3  ! �ѱ���a��b�����ӳ���add������

  write(*,*) a, b   ! 10   20 
  stop
end

subroutine add(first, second)  !��ַ����
implicit none
  integer :: first, second ! first,second�����ݻ��CALLʱ�õ�
  write(*,*) first+second

  first=10    !��ַ����
  second=20 

  return
end

