# require 'rails_helper'

# RSpec.describe "students/index", type: :view do
#   before(:each) do
#     assign(:students, [
#       Student.create!(
#         :CWID => 1,
#         :first_name => "First Name",
#         :last_name => "Last Name",
#         :teacher => "Teacher",
#         :count => 2
#       ),
#       Student.create!(
#         :CWID => 1,
#         :first_name => "First Name",
#         :last_name => "Last Name",
#         :teacher => "Teacher",
#         :count => 2
#       )
#     ])
#   end

#   it "renders a list of students" do
#     render
#     assert_select "tr>td", :text => 1.to_s, :count => 2
#     assert_select "tr>td", :text => "First Name".to_s, :count => 2
#     assert_select "tr>td", :text => "Last Name".to_s, :count => 2
#     assert_select "tr>td", :text => "Teacher".to_s, :count => 2
#     assert_select "tr>td", :text => 2.to_s, :count => 2
#   end
# end
