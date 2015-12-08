class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

    @professors = ["Florez", "Moore", "Rudolph", "Trautman", "Verdicchio"]
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
        @professors = ["Florez", "Moore", "Rudolph", "Trautman", "Verdicchio"]
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
    @professors = ["Florez", "Moore", "Rudolph", "Trautman", "Verdicchio"]
  end

  # POST /students
  # POST /students.json
  def create
        @professors = ["Florez", "Moore", "Rudolph", "Trautman", "Verdicchio"]
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        if @student != Student.where(cwid: @student.CWID).first
          @student.destroy
        format.html { redirect_to @student, notice: 'Sorry, a student with this CWID already exists.' }
        format.json { render :show, location: @student }
        elsif
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      end
      else
        #format.html { render :new }
        #format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    @professors = ["Florez", "Moore", "Rudolph", "Trautman", "Verdicchio"]
    if params[:pass] == 'mathisfun'
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        #format.html { render :edit }
        #format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
     else
        respond_to do |format|
       format.html { redirect_to @student, notice: 'Sorry, that password was incorrect.' }
       format.json { head :no_content }
       end
     end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  # def destroy
  #   @student.destroy
  #   respond_to do |format|
  #     format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  
    def login
    @cwid = params[:id]
    @student = Student.where(cwid: @cwid).take
    @count = @student.count
    @count = @count + 1
    @student.update_attributes!(:count => @count)
    end
    
    # def search
    # @cwid = params[:id]
    # @student = Student.where(cwid: @cwid).take
    # end
    
    def professor
      @professor = params[:p]
      @students = Student.where(teacher: @professor)
    end
    
    def submit
    @cwid = params[:id]
    @student = Student.where(cwid: @cwid).take
    if params[:commit] == 'Login'
      respond_to do |format|
      if @student.login_date == Date.today
        format.html { redirect_to @student, notice: 'Sorry, student has already logged in today.' }
        format.json { render :show, location: @student }
      else
      @count = @student.count
       @count = @count + 1
      @student.update_attributes!(:login_date => Date.today)
      @student.update_attributes!(:count => @count)
         format.html { render 'login'}
      end
    end
    elsif params[:commit] == 'Check Hours'
        render :search
    end
    end
    
    #professor submit ( edit a student, or delete a student, or delete all students)
    def profs
      @professors = ["Florez", "Moore", "Rudolph", "Trautman", "Verdicchio"]
      if params[:pass] == 'mathisfun' && params[:commit] == 'Delete'
        @cwid = params[:id]
        @student = Student.where(cwid: @cwid).take
        poof(@cwid)
        elsif  params[:pass] == 'mathisfun' && params[:commit] == 'Delete All'
          purge()
        else
          respond_to do |format|
      format.html { redirect_to students_url, notice: 'Sorry, that password was incorrect.' }
      format.json { head :no_content }
    end
  end
      end
    
    def poof (cwid)
    @cwid = cwid
    @student = Student.where(cwid: @cwid).take
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end


    end
    
    def purge
      #This will delete all students
      Student.delete_all
      respond_to do |format|
      format.html { redirect_to students_url, notice: 'All students have now been deleted.' }
      format.json { head :no_content }
        end
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
