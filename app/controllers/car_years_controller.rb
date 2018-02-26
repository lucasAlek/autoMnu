class CarYearsController < ApplicationController
  before_action :set_car_year, only: [:show, :edit, :update, :destroy]

  # GET /car_years
  # GET /car_years.json
  def index
    @car_years = CarYear.all
  end

  # GET /car_years/1
  # GET /car_years/1.json
  def show
  end

  # GET /car_years/new
  def new
    @car_year = CarYear.new
  end

  # GET /car_years/1/edit
  def edit
  end

  # POST /car_years
  # POST /car_years.json
  def create
    @car_year = CarYear.new(car_year_params)

    respond_to do |format|
      if @car_year.save
        format.html { redirect_to @car_year, notice: 'Car year was successfully created.' }
        format.json { render :show, status: :created, location: @car_year }
      else
        format.html { render :new }
        format.json { render json: @car_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_years/1
  # PATCH/PUT /car_years/1.json
  def update
    respond_to do |format|
      if @car_year.update(car_year_params)
        format.html { redirect_to @car_year, notice: 'Car year was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_year }
      else
        format.html { render :edit }
        format.json { render json: @car_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_years/1
  # DELETE /car_years/1.json
  def destroy
    @car_year.destroy
    respond_to do |format|
      format.html { redirect_to car_years_url, notice: 'Car year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_year
      @car_year = CarYear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_year_params
      params.fetch(:car_year, {})
    end
end
