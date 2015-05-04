class AttendanceRegistersController < ApplicationController
  respond_to :html, :json
  before_filter :find_group
  before_action :set_attendance_register, only: [:show, :edit, :update, :destroy]

  # GET /attendance_registers
  # GET /attendance_registers.json
  def index
    @attendance_registers = find_group.attendance_registers.order('created_at DESC').paginate(:per_page => 5, :page => params[:page])
    
  end

  # GET /attendance_registers/1
  # GET /attendance_registers/1.json
  def show
    @attendances = Attendance.all
  end

  # GET /attendance_registers/new
  def new
    @attendance_register = AttendanceRegister.new
    @group = Group.find(params[:group_id])
    @group.students.each do |g|
      @attendance_register.attendances << Attendance.new(:student => g)
    end
    
    respond_to do |format|
      @attendance_register
      format.html
      format.json
    end
  end

  # GET /attendance_registers/1/edit
  def edit
  end

  # POST /attendance_registers
  # POST /attendance_registers.json
  def create
    @attendance_register = find_group.attendance_registers.new(attendance_register_params)

    respond_to do |format|
      if @attendance_register.save
        format.html { redirect_to [@group, :anchor => 'attendances'], notice: 'Attendance register was successfully created.' }
        format.json { render :show, status: :created, location: @attendance_register }
      else
        format.html { render :new }
        format.json { render json: @attendance_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendance_registers/1
  # PATCH/PUT /attendance_registers/1.json
  def update
    respond_to do |format|
      if @attendance_register.update(attendance_register_params)
        format.html { redirect_to group_attendance_register_url, notice: 'Attendance register was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendance_register }
      else
        format.html { render :edit }
        format.json { render json: @attendance_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendance_registers/1
  # DELETE /attendance_registers/1.json
  def destroy
    @attendance_register.destroy
    respond_to do |format|
      format.html { redirect_to [@group, :anchor => 'attendances'], notice: 'Attendance register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance_register
      @attendance_register = find_group.attendance_registers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_register_params
      params.require(:attendance_register).permit(:group_id, :period_id, attendances_attributes: [:id, :student_id, :status, :notes])
    end
  
    def find_group
      @group = Group.find(params[:group_id])
    end
end
