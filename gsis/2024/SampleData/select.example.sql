select stu.id as student_number
    , stu.first_name
    , stu.last_name
    , sch.name as school_name
    , sy.name as year_name
    , ssy.grade_level
    /*, ssy.school_year_id*/
from student stu 
    left join student_school_year ssy on stu.id = ssy.student_id
    left join school sch on ssy.school_id = sch.id
    left join school_year sy on ssy.school_year_id = sy.id
where 1=1
    --and ssy.grade_level = 1
    and stu.id in ( 30058, 30057 )
order by sch.name desc, stu.id,  ssy.grade_level desc