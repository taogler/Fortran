! 1. 等号两边所使用的数组元素数目要一样多
! 2. 同时使用多个隐含式循环，低维的可以看作是内层循环

program ex0709
implicit none
  integer, parameter :: row = 2
  integer, parameter :: col = 2
  integer, dimension(2,2) :: a = reshape( (/1,2,3,4/), (/ 2,2/))
  ! a(1,1)=1, a(2,1)=2, a(1,2)=3, a(2,2)=4
  integer :: b(4)=(/ 5,6,7,8 /)
  integer :: c(2)

  write(*,*) a      ! 写出a(1,1), a(2,1), a(1,2), a(2,2)
  write(*,*) a(:,1) ! 写出a(1,1), a(2,1)
    
  c = a(:,1)     ! c(1)=a(1,1), c(2)=a(2,1)
  write(*,*) c   ! 写出c(1), c(2)
  
  c = a(2,:)           ! c(1)=a(2,1), c(2)=a(2,2)
  write(*,*) c         ! 写出c(1), c(2)
  write(*,*) c(2:1:-1) ! 写出c(2), c(1)   逆序
  
  c = b(1:4:2)   ! c(1)=b(1), c(2)=b(3)
  write(*,*) c   ! 写出c(1), c(2)

  stop
end
