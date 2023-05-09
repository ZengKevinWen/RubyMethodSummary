#TODO %Q的使用
# 对象.where(demo,参数)
demo = %Q((exportable_type = 'Course' and exportable_id = :course_id) or
          (exportable_type = 'Exercise' and exportable_id in (:exercise_ids)) or
          (exportable_type = 'HomeworkCommon' and exportable_id in (:homework_common_ids)))
p demo

p %Q(test)