class PrihlaskasController < ApplicationController
  # include CurrentCart
  # before_action :set_cart, only: [:create, :destroy]
  # before_action :set_prihlaska, only: [:show, :edit, :update]

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
    @akces = Akce.find(params[:akce])
  end

  # GET /prihlaskas/1/edit
  def edit
  end

  # POST /prihlaskas
  # POST /prihlaskas.json
  def create
    # akce = Akce.find(params[:checkbox])
    @prihlaska = Prihlaska.new(prihlaska_params)

    respond_to do |format|
      if @prihlaska.save
        format.js
        format.html { redirect_to(root_url, notice: 'Úspěšně jste se přihlásili!') }
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
        format.js
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
    # find current cart
    # find akce_id which i want to destroy = akceid
    # destroy all prihlaskas with akce_id = akceid and cart_id = current_cart.id
    # @aktual_prihlaska = Prihlaska.where(cart_id: @cart.id)
    prihlaskas_id = Prihlaska.find_by(akce_id: params[:akce_id]).id
    Prihlaska.destroy(prihlaskas_id)
    # @prihlaska.destroy

    respond_to do |format|
      # format.html { redirect_to prihlaskas_url, notice: 'Prihlaska was successfully destroyed.' }
      format.js
      format.json { head :no_content }
    end
  end

  # def destroy_prihlaska_in_cart
  #   prihlaskas_id = Prihlaska.where(cart_id: @cart.id).id
  #   Prihlaska.destroy(prihlaskas_id)

  #   respond_to do |format|
  #     format.html { redirect_to prihlaskas_url, notice: 'Prihlaska was successfully destroyed.' }
  #     format.js
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_prihlaska
      # @prihlaska = Prihlaska.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prihlaska_params
      params.require(:prihlaska).permit(:jmeno, :prijmeni, :email, :telefon, :role, :vozickar, :prukaz, :vzkaz, akce_ids: [])
    end
end
