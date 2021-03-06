class GradesController < ApplicationController
  before_filter :find_course
  before_filter :find_exam
  before_filter :find_students
  before_action :set_grade, only: [:show, :edit, :update, :destroy]

  # GET /grades
  # GET /grades.json
  def index
    @grades = find_exam.grades.all
  end
  
  # GET /grades/1
  # GET /grades/1.json
  def show
  end

  # GET /grades/new
  def new
    @grade = Grade.new
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades
  # POST /grades.json
  def create
    @grade = find_exam.grades.new(grade_params)

    respond_to do |format|
      if @grade.save
        format.html { redirect_to [@course, @exam], notice: 'Grade was successfully added.' }
        format.json { render :show, status: :created, location: @grade }
      else
        format.html { render :new }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grades/1
  # PATCH/PUT /grades/1.json
  def update
    respond_to do |format|
      if @grade.update(grade_params)
        format.html { redirect_to course_exam_url, notice: 'Grade was successfully updated.' }
        format.json { render :show, status: :ok, location: @grades }
      else
        format.html { render :edit }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grades/1
  # DELETE /grades/1.json
  def destroy
    @grade.destroy
    respond_to do |format|
      format.html { redirect_to course_exam_grades_url, notice: 'Grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_params
      params.require(:grade).permit(:student_id, :exam_id, :score, :feedback)
    end
  
    def find_course
      @course = Course.find(params[:course_id])
    end
    
    def find_students
      @student = find_course.group.students
    end
  
    def find_exam
      @exam = find_course.exams.find(params[:exam_id])
    end
end
