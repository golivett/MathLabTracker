# require 'rails_helper'

# RSpec.describe "students/new", type: :view do
#   before(:each) do
#     assign(:student, Student.new(
#       :CWID => 1,
#       :first_name => "MyString",
#       :last_name => "MyString",
#       :teacher => "MyString",
#       :count => 1
#     ))
#   end

#   it "renders new student form" do
#     render

#     assert_select "form[action=?][method=?]", students_path, "post" do

#       assert_select "input#student_CWID[name=?]", "student[CWID]"

#       assert_select "input#student_first_name[name=?]", "student[first_name]"

#       assert_select "input#student_last_name[name=?]", "student[last_name]"

#       assert_select "input#student_teacher[name=?]", "student[teacher]"

#       assert_select "input#student_count[name=?]", "student[count]"
#     end
#   end
# end
