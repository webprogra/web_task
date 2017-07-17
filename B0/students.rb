class Student
  @@students=Array.new(100){Array.new(4)}
  def init
    i=0
    while i<100
      @@students[i][0]=i+1
      @@students[i][1]="student#{rand(100)+1}"
      if rand(2)==1  then @@students[i][2]="女"
        else @@students[i][2]="男"
      end
      @@students[i][3]=rand(6)+15
      i+=1
    end
  end
  def show
    i=0
    while i<100
      print "id:#{@@students[i][0]}\t\t姓名:#{@@students[i][1]}\t\t性别:#{@@students[i][2]}\t\t年  龄:#{@@students[i][3]}\n"
      i+=1
    end
  end
end
