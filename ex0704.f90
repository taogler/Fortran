! ��ά����
! ������ʽ��1. integer a(10,10)
!           2. integer, dimension(10,10) :: a
!           3. integer a  ! fortran 77 �������������� a�����ͣ������� aΪ��СΪ10*10������
!              dimension a(10,10)

program ex0704
implicit none
  integer, parameter :: row = 2
  integer, parameter :: col = 2
  integer :: matrixA(row,col)
  integer :: matrixB(row,col)
  integer :: matrixC(row,col)
  integer r ! ����ָ��row
  integer c ! ����ָ��column

  ! �������A������
  write(*,*) "Matrix A"
  do r=1, row
    do c=1, col
       write(*,"('A(',I1,',',I1,')=')") r,c  !����
     ! write(*,"('A('I1','I1')=')") r,c
	  read(*,*) matrixA(r,c)
	end do
  end do

  ! �������B������
  write(*,*) "Matrix B"
  do r=1, row
    do c=1, col
      write(*,"('B(',I1,',',I1,')=')") r,c
	  read(*,*) matrixB(r,c)
	end do
  end do
  
  ! �Ѿ���A,B��Ӳ�������
  write(*,*) "Matrix A+B="
  do r=1, row
    do c=1, col
	  matrixC(r,c) = matrixB(r,c)+matrixA(r,c) ! �������
	  write(*,"('(',I1,',',I1,')=',I3)") r,c,matrixC(r,c)
	end do
  end do

  stop
end
