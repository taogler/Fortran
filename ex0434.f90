!�Զ�����������

program  ex0434
implicit none

! ��ʼ����person�������
type :: person 
  character(len=30) :: name ! ����
  integer  ::  age          ! ����
  integer  ::  height       ! ���			
  integer  ::  weight       ! ����
  character(len=80) :: address ! ��ַ
end type person

! ����һ��person���͵ı���
type(person) :: a

a=person("tao", 23, 176, 68, "XTU,Hunan")

if(1==2) then
write(*,*) "NAME:"
read(*,*)  a%name     !  % ��ʾҪȡ�ñ���a��name���Ԫ��
write(*,*) "AGE:"
read(*,*)  a%age
write(*,*) "HEIGHT:"
read(*,*)  a%height
write(*,*) "WEIGHT:"
read(*,*)  a%weight
write(*,*) "ADDRESS:"
read(*,"(A80)") a%address
endif

write(*,100) a%name,a%age,a%height,a%weight,a%address
100 format("Name:",A10/,"Age:",I3/,"Height:",I3/,"Weight:",I3/,&
           &"Addres:",A50)

stop
end
