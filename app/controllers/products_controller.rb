class ProductsController < ApplicationController
	
	def create
		@product = Product.new(product_params)
		@product.category = Category.find(params[:category_id])
		@product.save
		redirect_to @products.category
	end


	private

	def product_params
		params.require(:product).permit(:name, :price)
	end

end
