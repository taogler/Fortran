!自定义数据类型

program  ex0434
implicit none

! 开始建立person这个类型
type :: person 
  character(len=30) :: name ! 人名
  integer  ::  age          ! 年龄
  integer  ::  height       ! 身高			
  integer  ::  weight       ! 体重
  character(len=80) :: address ! 地址
end type person

! 声明一个person类型的变量
type(person) :: a

a=person("tao", 23, 176, 68, "XTU,Hunan")

if(1==2) then
write(*,*) "NAME:"
read(*,*)  a%name     !  % 表示要取用变量a中name这个元素
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
