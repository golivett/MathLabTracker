class StudentController < ApplicationController
    #legacy code!!!!

    def student_params
        params.require(:student).permit(:CWID, :first_name, :last_name, :teacher, :count)
    end
    
    def index
        id = params[:id]
        @student = Student.find(id)
    end
    
end
