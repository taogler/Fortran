program ex0512
implicit none
  integer score
  character grade

  write(*,*) "Score:"
  read(*,*) score

  select case(score)  !����scoreֻ�����������ַ����߼�����
  case(90:100) ! 90��100��֮��     case ����ֵ�����ǹ̶��ĳ���
    grade='A'
  case(80:89)  ! 80��89��֮��      ð�ű�ʾ��ֵ��Χ�����ű�ʾ���Է�������ֵ
    grade='B'
  case(70:79)  ! 70��79��֮��
    grade='C'
  case(60:69)  ! 60��69��֮��
    grade='D'
  case(0:59)   ! 0��59��֮��    ���� case( :59)   
    grade='E'
  case default ! ��������
    grade='?'
  end select
  
  write(*,"('Grade:',A1)") grade
  stop
end
