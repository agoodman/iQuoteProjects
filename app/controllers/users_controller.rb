class UsersController < Clearance::UsersController
  
  before_filter :authenticate, :except => [ :new, :show, :create ]
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to url_after_create, :notice => 'User updated.'
    else
      flash_errors_after_create
      render :action => 'new'
    end
  end
  
  def destroy
    @user = current_user
    @user.destroy
    redirect_to url_after_destroy
  end
  
  private
  
  def url_after_create
    current_user = @user
    root_path
  end
  
  def url_after_destroy
    sign_in_path
  end
  
end
