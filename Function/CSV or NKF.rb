

#todo 导出指定需求数据(test2(导出的格式有一定的区别) test test1 )
# todo 参考文档csdn中
# todo
def test2

  require 'csv'
  require 'nkf'
  field_name = %w(创建者   合作者    课程链接   实践项目数   学习人数   课堂链接   课堂学习人数   课程创建时间 )
  results = Subject.includes(:courses, :user, :users, :subject_members, :subject_record,stage_shixuns: [{ shixun: :challenges} ]).where("created_at > '2022-01-01 00:00:00' ")
  csv_string = CSV.generate(:col_sep => "\t", :row_sep => "\r\n") do |csv|
    csv << field_name
    results.each_with_index do |result, index|
      csv << [ result.user.real_name, result.users.map{|d| d.real_name }.join("·") , "https://www.educoder.net/paths/#{result.identifier}", result.subject_challenge_count, result.member_count, result.excellent ? result.courses.map{|d| "https://www.educoder.net/classrooms/#{d.identifier}/announcement" }.join(",") : [].join("·"),  result.courses.map{|d| d.course_members_count}.sum , result.created_at.to_time]
    end
  end
  file = File.new("/tmp/学校信息统计.csv", "wb")
  file.puts NKF.nkf("-w", csv_string)
  file.close

end



def test
  results = Subject.includes(:user, :users, :courses, :subject_record, :subject_members, :stage_shixuns).where("created_at > '2022-01-01 00:00:00' ")

  field_name = %w(创建者 合作者 课程链接 实践项目数 学习人数 课堂链接 课堂学习人数 课程创建时间)
  csv_string = CSV.generate do |csv|
    csv << field_name
    results.each do |result|
      csv << [result.user.real_name, result.users.map{|d| d.real_name }.join('、'), "https://www.educoder.net/paths/#{result.identifier}", result.subject_challenge_count, result.member_count, result.courses.map{|d| "https://www.educoder.net/classrooms/#{d.identifier}"}.join('、'), result.courses.map{|d | d.course_members_count }.sum, result.created_at]
    end
  end

  file = File.new("/tmp/Kevin.csv", "wb")
  file.puts NKF.nkf("-wL", csv_string)
  file.close

end



def test1
  results = Subject.includes(:user, :users, :courses, :subject_record, :subject_members, :stage_shixuns).where("created_at > '2022-01-01 00:00:00' ")

  field_name = %w(创建者 合作者 课程链接 实践项目数 学习人数 课堂链接 课堂学习人数 课程创建时间)
  CSV.open('/tmp/kevin-csv测试.csv', "wb") do |csv|
    csv << field_name
    results.each do |result|
      csv << [result.user.real_name, result.users.map{|d| d.real_name }.join('、'), "https://www.educoder.net/paths/#{result.identifier}", result.subject_challenge_count, result.member_count, result.courses.map{|d| "https://www.educoder.net/classrooms/#{d.identifier}"}.join('、'), result.courses.map{|d | d.course_members_count }.sum, result.created_at]
    end
  end

end
