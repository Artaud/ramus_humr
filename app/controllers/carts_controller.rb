class CartsController < InheritedResources::Base
	include CurrentCart
	before_action :set_cart

	# def show
	# 	begin
	# 		@cart = Cart.find([:id])
	# 	rescue ActiveRecord::RecordNotFound
	# 		logger.error "Attempt to access invalid cart #{params[:id]}"
	# 		redirect_to root_url, :notice => 'Neplatný košík'
	# 	else
	# 		respond_to do |format|
	# 			format.html # show.html.erb
	# 			format.json { render json: @cart }
	# 		end
	# 	end
	# end
	def update
		respond_to do |format|
			if @cart.update(cart_params)
				format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
				format.js
				format.json { render :show, status: :ok, location: @cart }
			else
				format.html { render :edit }
				format.json { render json: @cart.errors, status: :unprocessable_entity }
			end
		end
	end

	private

	def cart_params
		params.require(:cart).permit(:jmeno, :prijmeni, :vzkaz, :email, :telefon, :potvrzeno)
	end


end
