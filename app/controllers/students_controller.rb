class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json


def index
  @students = Student.all
end



  # GET /students/1
  # GET /students/1.json
  def show
    id = params[:id]
    @student = Student.find(id)
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
    def login
    @cwid = params[:id]
    @student = Student.where(cwid: @cwid).take
    @count = @student.count
    @count = @count + 1
    #@student.count = @student.count + 1
    #@student.save!
    @student.update_attributes!(:count => @count)
    end
    
    def search
    @cwid = params[:id]
    @student = Student.where(cwid: @cwid).take
    end
    
    def professor
      @professor = params[:p]
      @students = Student.where(teacher: @professor)
    end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      id = params[:id]
      @student = Student.find(id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:CWID, :first_name, :last_name, :teacher, :count)
    end
    

    
end
