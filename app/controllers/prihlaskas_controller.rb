class PrihlaskasController < ApplicationController
  before_action :set_prihlaska, only: [:show, :edit, :update, :destroy]

  # GET /prihlaskas
  # GET /prihlaskas.json
  def index
    @prihlaskas = Prihlaska.all
  end

  # GET /prihlaskas/1
  # GET /prihlaskas/1.json
  def show
  end

  # GET /prihlaskas/new
  def new
    @prihlaska = Prihlaska.new
  end

  # GET /prihlaskas/1/edit
  def edit
  end

  # POST /prihlaskas
  # POST /prihlaskas.json
  def create
    @prihlaska = Prihlaska.new(prihlaska_params)

    respond_to do |format|
      if @prihlaska.save
        format.html { redirect_to @prihlaska, notice: 'Prihlaska was successfully created.' }
        format.json { render :show, status: :created, location: @prihlaska }
      else
        format.html { render :new }
        format.json { render json: @prihlaska.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prihlaskas/1
  # PATCH/PUT /prihlaskas/1.json
  def update
    respond_to do |format|
      if @prihlaska.update(prihlaska_params)
        format.html { redirect_to @prihlaska, notice: 'Prihlaska was successfully updated.' }
        format.json { render :show, status: :ok, location: @prihlaska }
      else
        format.html { render :edit }
        format.json { render json: @prihlaska.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prihlaskas/1
  # DELETE /prihlaskas/1.json
  def destroy
    @prihlaska.destroy
    respond_to do |format|
      format.html { redirect_to prihlaskas_url, notice: 'Prihlaska was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prihlaska
      @prihlaska = Prihlaska.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prihlaska_params
      params.require(:prihlaska).permit(:jmeno_prijmeni, :kontakt, :role_ucastnika_id, :vzkaz, :akce_id)
    end
end
