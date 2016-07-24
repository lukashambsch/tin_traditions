class TinsController < ApplicationController
  before_action :set_tin, only: [:show, :edit, :update, :destroy]

  # GET /tins
  # GET /tins.json
  def index
    @tins = Tin.all
  end

  # GET /tins/1
  # GET /tins/1.json
  def show
  end

  # GET /tins/new
  def new
    @tin = Tin.new
  end

  # GET /tins/1/edit
  def edit
  end

  # POST /tins
  # POST /tins.json
  def create
    @tin = Tin.new(tin_params)

    respond_to do |format|
      if @tin.save
        format.html { redirect_to @tin, notice: 'Tin was successfully created.' }
        format.json { render :show, status: :created, location: @tin }
      else
        format.html { render :new }
        format.json { render json: @tin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tins/1
  # PATCH/PUT /tins/1.json
  def update
    respond_to do |format|
      if @tin.update(tin_params)
        format.html { redirect_to @tin, notice: 'Tin was successfully updated.' }
        format.json { render :show, status: :ok, location: @tin }
      else
        format.html { render :edit }
        format.json { render json: @tin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tins/1
  # DELETE /tins/1.json
  def destroy
    @tin.destroy
    respond_to do |format|
      format.html { redirect_to tins_url, notice: 'Tin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tin
      @tin = Tin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tin_params
      params.require(:tin).permit(:pin, :serial_number, :order_number, :purchase_date)
    end
end
