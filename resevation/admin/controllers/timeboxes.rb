Admin.controllers :timeboxes do

  get :index do
    @timeboxes = Timebox.all
    render 'timeboxes/index'
  end

  get :new do
    @timebox = Timebox.new
    render 'timeboxes/new'
  end

  post :create do
    @timebox = Timebox.new(params[:timebox])
    if @timebox.save
      flash[:notice] = 'Timebox was successfully created.'
      redirect url(:timeboxes, :edit, :id => @timebox.id)
    else
      render 'timeboxes/new'
    end
  end

  get :edit, :with => :id do
    @timebox = Timebox.find(params[:id])
    render 'timeboxes/edit'
  end

  put :update, :with => :id do
    @timebox = Timebox.find(params[:id])
    if @timebox.update_attributes(params[:timebox])
      flash[:notice] = 'Timebox was successfully updated.'
      redirect url(:timeboxes, :edit, :id => @timebox.id)
    else
      render 'timeboxes/edit'
    end
  end

  delete :destroy, :with => :id do
    timebox = Timebox.find(params[:id])
    if timebox.destroy
      flash[:notice] = 'Timebox was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Timebox!'
    end
    redirect url(:timeboxes, :index)
  end
end
