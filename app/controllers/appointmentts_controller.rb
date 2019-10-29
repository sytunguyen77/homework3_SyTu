class AppointmenttsController < ApplicationController
  before_action :set_appointmentt, only: [:show, :edit, :update, :destroy]

  # GET /appointmentts
  # GET /appointmentts.json
  def index
    @appointmentts = Appointmentt.all
  end

  # GET /appointmentts/1
  # GET /appointmentts/1.json
  def show
  end

  # GET /appointmentts/new
  def new
    @appointmentt = Appointmentt.new
  end

  # GET /appointmentts/1/edit
  def edit
  end

  # POST /appointmentts
  # POST /appointmentts.json
  def create
    @appointmentt = Appointmentt.new(appointmentt_params)

    respond_to do |format|
      if @appointmentt.save
        format.html { redirect_to @appointmentt, notice: 'Appointmentt was successfully created.' }
        format.json { render :show, status: :created, location: @appointmentt }
      else
        format.html { render :new }
        format.json { render json: @appointmentt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointmentts/1
  # PATCH/PUT /appointmentts/1.json
  def update
    respond_to do |format|
      if @appointmentt.update(appointmentt_params)
        format.html { redirect_to @appointmentt, notice: 'Appointmentt was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointmentt }
      else
        format.html { render :edit }
        format.json { render json: @appointmentt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointmentts/1
  # DELETE /appointmentts/1.json
  def destroy
    @appointmentt.destroy
    respond_to do |format|
      format.html { redirect_to appointmentts_url, notice: 'Appointmentt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointmentt
      @appointmentt = Appointmentt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointmentt_params
      params.require(:appointmentt).permit(:visit, :physician_id, :patient_id)
    end
end
