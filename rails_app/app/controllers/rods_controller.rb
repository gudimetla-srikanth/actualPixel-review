class RodsController < ApplicationController
  before_action :set_rod, only: %i[ show edit update destroy ]

  # GET /rods or /rods.json
  def index
    @rods = Rod.all
  end

  # GET /rods/1 or /rods/1.json
  def show
  end

  # GET /rods/new
  def new
    @rod = Rod.new
  end

  # GET /rods/1/edit
  def edit
  end

  # POST /rods or /rods.json
  def create
    @rod = Rod.new(rod_params)

    respond_to do |format|
      if @rod.save
        format.html { redirect_to rod_url(@rod), notice: "Rod was successfully created." }
        format.json { render :show, status: :created, location: @rod }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rods/1 or /rods/1.json
  def update
    respond_to do |format|
      if @rod.update(rod_params)
        format.html { redirect_to rod_url(@rod), notice: "Rod was successfully updated." }
        format.json { render :show, status: :ok, location: @rod }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rods/1 or /rods/1.json
  def destroy
    @rod.destroy!

    respond_to do |format|
      format.html { redirect_to rods_url, notice: "Rod was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rod
      @rod = Rod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rod_params
      params.fetch(:rod, {})
    end
end
