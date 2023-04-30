class PowersController < ApplicationController
  before_action :set_power, only: %i[ show edit update destroy ]
  before_action :logged_in_user

  # GET /powers or /powers.json
  def index
    @powers = Power.all
  end

  # GET /powers/1 or /powers/1.json
  def show
  end

  # GET /powers/new
  def new
    @power = Power.new
  end

  # GET /powers/1/edit
  def edit
  end

  # POST /powers or /powers.json
  def create
    @power = Power.new(power_params)

    respond_to do |format|
      if @power.save
        format.html { redirect_to power_url(@power), notice: "Power was successfully created." }
        format.json { render :show, status: :created, location: @power }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @power.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powers/1 or /powers/1.json
  def update
    respond_to do |format|
      if @power.update(power_params)
        format.html { redirect_to power_url(@power), notice: "Power was successfully updated." }
        format.json { render :show, status: :ok, location: @power }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @power.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /powers/1 or /powers/1.json
  def destroy
    @power.destroy

    respond_to do |format|
      format.html { redirect_to powers_url, notice: "Power was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power
      @power = Power.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def power_params
      params.require(:power).permit(:e1, :e2, :e3, :e4, :e5, :e6, :e7, :e8, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8)
    end
end
