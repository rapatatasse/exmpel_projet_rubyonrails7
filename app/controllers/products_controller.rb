class ProductsController < ApplicationController
 
    
    before_action :set_products, only: [:edit, :update, :destroy]
  
    def index
      @products = Product.all
    end
    
    def new
      @products = Product.new
    end
    
    def edit
    end
    
    def update
      
      if @products.update(products_params)
        redirect_to products_path, notice: 'products was successfully updated.'
      else
        render :new
      end
    end
  
    def create
      @products = Product.new(products_params)
      @products.product_id = current_product.id
      if @products.save!
        redirect_to products_path, notice:  'Product was successfully created.'
      else
        render :new
      end
    end
  
    def destroy
      @product.destroy
      authorize @products
      redirect_to products_path, notice: 'product was successfully destroyed.'
    end
  
  private
    def set_products
      @products = Product.find(params[:id])
    end
    def products_params
       params.require(:product).permit(:name, :user, :archiver)	
    end

  
  
end
