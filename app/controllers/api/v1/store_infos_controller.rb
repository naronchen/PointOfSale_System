class Api::V1::StoreInfosController < ApplicationController
  before_action :set_store_info, only: %i[ show update destroy ]

  # GET /store_infos
  def index
    @store_infos = StoreInfo.all

    render json: @store_infos
  end

  # GET /store_infos/1
  def show
    render json: @store_info
  end

  # POST /store_infos
  def create
    @store_info = StoreInfo.new(store_info_params)

    if @store_info.save
      render json: @store_info, status: :created, location: @store_info
    else
      render json: @store_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /store_infos/1
  def update
    if @store_info.update(store_info_params)
      render json: @store_info
    else
      render json: @store_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /store_infos/1
  def destroy
    @store_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_info
      @store_info = StoreInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_info_params
      params.require(:store_info).permit(:name, :address, :taxRate, :contactNumber, :currencySymbol)
    end
end
