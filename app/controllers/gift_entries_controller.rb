class GiftEntriesController < ApplicationController
  before_action :set_gift_entry, only: [:show, :edit, :update, :destroy]

  # GET /gift_entries
  # GET /gift_entries.json
  def index
    @gift_entries = GiftEntry.all
  end

  # GET /gift_entries/1
  # GET /gift_entries/1.json
  def show
  end

  # GET /gift_entries/new
  def new
    @gift_entry = GiftEntry.new
  end

  # GET /gift_entries/1/edit
  def edit
  end

  # POST /gift_entries
  # POST /gift_entries.json
  def create
    @gift_entry = GiftEntry.new(gift_entry_params)

    respond_to do |format|
      if @gift_entry.save
        format.html { redirect_to @gift_entry, notice: 'Gift entry was successfully created.' }
        format.json { render :show, status: :created, location: @gift_entry }
      else
        format.html { render :new }
        format.json { render json: @gift_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gift_entries/1
  # PATCH/PUT /gift_entries/1.json
  def update
    respond_to do |format|
      if @gift_entry.update(gift_entry_params)
        format.html { redirect_to @gift_entry, notice: 'Gift entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @gift_entry }
      else
        format.html { render :edit }
        format.json { render json: @gift_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gift_entries/1
  # DELETE /gift_entries/1.json
  def destroy
    @gift_entry.destroy
    respond_to do |format|
      format.html { redirect_to gift_entries_url, notice: 'Gift entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift_entry
      @gift_entry = GiftEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gift_entry_params
      params.require(:gift_entry).permit(:received_date, :contents, :message, :user_id, :tin_id)
    end
end
