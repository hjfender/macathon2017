class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.where(nil)
    filtering_params(params).each do |key, value|
      @appointment = @appointment.public_send(key, value) if value.present?
    end
  end
  
  def search(search_medicare, search_slider, search_specialty, search_distance)
    return scoped unless search_medicare.present? || search_slider.preset? || search_specialty.present? || 


  # GET /appointments/1
  # GET /appointments/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "Appointment.pdf", :template => "appointments/show.html.erb"
      end
    end
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def book
    @appointment.close
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:start_time, :date, :length, :open, :patient_birthdate, :patient_name, :doctor_id)
    end
    
    # A list of param names that can be used for filtering
    def filtering_params(params)
      params.slice(:medicare, :slider, :specialty, :distance)
    end
end
