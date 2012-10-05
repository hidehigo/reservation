Admin.controllers :shops do

  get :index do
    @shops = Shop.all
    render 'shops/index'
  end

  get :new do
    @shop = Shop.new
    render 'shops/new'
  end

  post :create do
    @shop = Shop.new(params[:shop])
    if @shop.save
      flash[:notice] = 'Shop was successfully created.'
      redirect url(:shops, :edit, :id => @shop.id)
    else
      render 'shops/new'
    end
  end

  get :edit, :with => :id do
    @shop = Shop.find(params[:id])
    render 'shops/edit'
  end

  put :update, :with => :id do
    @shop = Shop.find(params[:id])
    if @shop.update_attributes(params[:shop])
      flash[:notice] = 'Shop was successfully updated.'
      redirect url(:shops, :edit, :id => @shop.id)
    else
      render 'shops/edit'
    end
  end

  delete :destroy, :with => :id do
    shop = Shop.find(params[:id])
    if shop.destroy
      flash[:notice] = 'Shop was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Shop!'
    end
    redirect url(:shops, :index)
  end
end
