! �����ɱ��С������
! 1. integer, allocatable :: a(:)  ! ����һ��һά���飬��ά������Ϊ a(:,:)
! 2. allocate(a(x))  !�����ڴ�ռ�,����x���û�����
! 3. deallocate(a)   !����ͷ��ڴ�ռ�

program  ex0717
implicit none
  integer :: size, error=0
  integer, parameter :: one_mb=1024*1024 ! 1MB=1024*1KB=1024*1024B
 ! integer, parameter :: one_gb=1024*1024*1024
  character, allocatable ::  a(:)

  do while( .true. )
    size=size+one_mb ! һ������1MB���ַ�,Ҳ����1MB���ڴ�ռ�
   ! size=size+one_gb ! һ������1GB���ַ�,Ҳ����1GB���ڴ�ռ�
    allocate( a(size), stat=error )
    if ( error/=0 ) exit
    write(*,"('Allocate ',I10, ' bytes')") size
	write(*,"(F10.2,' MB used')") real(size)/real(one_mb)
	!write(*,"(F10.2,' GB used')") real(size)/real(one_gb)
    deallocate( a )
  end do

  stop
end
