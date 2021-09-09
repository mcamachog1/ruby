class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :update, :destroy]
  before_action :set_country_page, only: [:countrypage]

  # GET /countries
  def index
    @countries = Country.all

    render json: @countries
  end

  # GET /countries/1
  def show
    render json: @country
  end

  # GET /countries/page/1
  def countrypage
    render json: @country
  end

  # POST /countries
  def create
    @country = Country.new(country_params)

    if @country.save
      render json: @country, status: :created, location: @country
    else
      render json: @country.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /countries/1
  def update
    if @country.update(country_params)
      render json: @country
    else
      render json: @country.errors, status: :unprocessable_entity
    end
  end

  # DELETE /countries/1
  def destroy
    @country.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    def set_country_page
      @country = Country.page(params[:page_id])
    end


    # Only allow a list of trusted parameters through.
    def country_params
      params.require(:country).permit(:name, :continent)
    end
end
