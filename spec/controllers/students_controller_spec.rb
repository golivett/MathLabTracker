require 'rails_helper'

describe StudentsController do
    
    describe "#search" do
        context "When student is searched" do
            
            it "should find a student" do
            
                @student_cwid = "1234"
                @student = double('fake_student', :cwid => '1234')
            
                expect(Student).to receive(:search).with(@student_cwid).and_return(@student)
                expect(@student).to receive(:search)
            
                get :search, :cwid => @student_cwid
            
                expect(response).to render_template(:search)
            end
        end

        
    end
    
    describe "#login" do
        context "When students logs in" do
                it "should increment a student's visits" do
                    
            @student_cwid = "1234"
            @student_id = "1"
            @student_count = 0
            @student = double('fake_student', :cwid => "10519447", :count => 0, :id => "1")
            
            expect(Student).to receive(:find).with(@student_id).and_return(@student)
            
            expect(@student).to receive(:login)
            
            get :login, :id => @student_id

            expect(@student.count).to eq(1)
        end
        end
        
        context "When students logs in twice" do
        end
    end
    
    describe "#purge" do
        context "When all students are deleted" do
            it "should remove the students" do

                
                get :purge
                expect(response).to redirect_to(students_path)

            end
        end
    end
    
    describe "All Students Button" do
        context "When someone clicks all students" do
            it "should bring up the student table" do
                visit '/'
                click_button('All Students')
                expect(response).to redirect_to(students_path)
                
        end
    end
end
end
    