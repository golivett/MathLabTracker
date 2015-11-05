require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :CWID => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :teacher => "MyString",
      :count => 1
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_CWID[name=?]", "student[CWID]"

      assert_select "input#student_first_name[name=?]", "student[first_name]"

      assert_select "input#student_last_name[name=?]", "student[last_name]"

      assert_select "input#student_teacher[name=?]", "student[teacher]"

      assert_select "input#student_count[name=?]", "student[count]"
    end
  end
end
