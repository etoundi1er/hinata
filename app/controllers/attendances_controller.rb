class AttendancesController < ApplicationController
  before_filter :find_group
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]
  set_tab :attendances

  # GET /attendances
  # GET /attendances.json
  def index
#     @students = find_group.students
#     @attendances = Attendance.all
    
  if params["student_ids"].nil? 
      @attendance = Attendance.create(params[:attendance])

   else
     params["student_ids"].each do |id|
     @student = Student.find(id.to_i)
     @attendance = @student.attendances.create(params[:attendance])
     end
   end

  end
  
  # GET /attendances/1
  # GET /attendances/1.json
  def show
  end

  # GET /attendances/new
  def new
    @attendance = Attendance.new
  end

  # GET /attendances/1/edit
  def edit
  end

  # POST /attendances
  # POST /attendances.json
  def create
    @attendance = Attendance.new(attendance_params)

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to @attendance, notice: 'Attendance was successfully created.' }
        format.json { render :show, status: :created, location: @attendance }
      else
        format.html { render :new }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendances/1
  # PATCH/PUT /attendances/1.json
  def update
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to @attendance, notice: 'Attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendance }
      else
        format.html { render :edit }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendances/1
  # DELETE /attendances/1.json
  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to attendances_url, notice: 'Attendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @attendance = find_group.attendances.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_params
      params.require(:attendance).permit(:student_id, :course_id, :group_id, :status, :taken_at, :employee_id)
    end
  
    def find_group
      @group = Group.find(params[:group_id])
    end
end
