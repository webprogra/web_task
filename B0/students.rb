class Student
  @@students=Array.new(100){Array.new(4)}
  #初始化100个学生信息
  def initialize
    #进行100次循环
    100.times do |i|
      #生成学号（从1~100递增）
      @@students[i][0]=i+1
      #生成随机姓名
      @@students[i][1]="#{('A'..'Z').to_a.sample(1).join}#{('a'..'z').to_a.sample(rand(2)+2).join}"
      #生成随机性别（男或女）
      if rand(2)==1  then @@students[i][2]="女"
        else @@students[i][2]="男"
      end
      #生成随机年龄（15~20）
      @@students[i][3]=rand(6)+15
      i+=1
    end
  end
  #显示100个学生信息
  def show
    i=0
    100.times do |i|
      print "id:#{@@students[i][0]}\t\t姓名:#{@@students[i][1]}\t\t性别:#{@@students[i][2]}\t\t年龄:#{@@students[i][3]}\n"
      i+=1
    end
  end
end

