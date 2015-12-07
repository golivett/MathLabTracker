require 'rails_helper'

describe StudentsController do
    
    describe "#search" do
        context "When student is searched" do
            
            it "should find a student" do
            
                @student_cwid = "1234"
                @student = double('fake_student', :cwid => '1234')
            
                expect(Student).to receive(:search).with(@student_cwid).and_return(@student)
            
                get :search, :cwid => @student_cwid
            
                expect(response).to render_template(:search)
            end
            
        end
        
        context "When student database searched and not found" do
            
        end
        
        
        
    end    
    
end