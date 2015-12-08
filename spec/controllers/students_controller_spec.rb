require 'rails_helper'

describe StudentsController do
    

    
    describe "#purge" do
        context "When all students are deleted" do
            it "should remove the students" do
                expect(Student).to receive(:delete_all)
                get :purge
                expect(response).to redirect_to(students_path)

            end
        end
    end
    
    describe "#poof" do
        context "When a single student is deleted" do
            it "should remove the student" do
                
                @cwid = "10519447"
                @student = double('Olivetti', :cwid => '10519447')
                
                Student.should_receive(:where).with(cwid: @cwid)
                
                #ERROR: Destroy is undefined method
                Student.should_receive(:destroy)
                
                post :poof, :id => @cwid
                
                expect(response).to redirect_to(students_path)
                
            end
        end
    end
    
    describe "#index" do
        context "When someone wants to check their profile" do
            it "should pull up their stats" do
                
                
                expect(Student).to receive(:all)
                               
                get :index
                
            end
        end
    end
    
        describe "#new" do
        context "When someone wants to create an account" do
            it "should add a new Student entity" do
                
                expect(Student).to receive(:new)
                get :new
                
            end
        end
    end
    
    
        describe "#professor" do
        context "When a professor wants to check their students" do
            it 'Should pull up the students list' do
                @professor = "Florez"
                Student.should_receive(:where).with(teacher: @professor)
                get :professor, :p => "Florez"
            end
        end
    end
    
    
    
    

end