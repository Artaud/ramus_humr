class AkcesController < ApplicationController
  before_action :set_akce, only: [:show, :edit, :update, :destroy]

  # GET /akces
  # GET /akces.json
  def index
    @akces = Akce.all
  end

  # GET /akces/1
  # GET /akces/1.json
  def show
  end

  # GET /akces/new
  def new
    @akce = Akce.new
  end

  # GET /akces/1/edit
  def edit
  end

  # POST /akces
  # POST /akces.json
  def create
    @akce = Akce.new(akce_params)

    respond_to do |format|
      if @akce.save
        format.html { redirect_to @akce, notice: 'Akce was successfully created.' }
        format.json { render :show, status: :created, location: @akce }
      else
        format.html { render :new }
        format.json { render json: @akce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /akces/1
  # PATCH/PUT /akces/1.json
  def update
    respond_to do |format|
      if @akce.update(akce_params)
        format.html { redirect_to @akce, notice: 'Akce was successfully updated.' }
        format.json { render :show, status: :ok, location: @akce }
      else
        format.html { render :edit }
        format.json { render json: @akce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /akces/1
  # DELETE /akces/1.json
  def destroy
    @akce.destroy
    respond_to do |format|
      format.html { redirect_to akces_url, notice: 'Akce was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_akce
      @akce = Akce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def akce_params
      params.require(:akce).permit(:termin, :popis, :cena, :misto_srazu)
    end
end
