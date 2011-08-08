class SessionsController < Clearance::SessionsController
  
  def url_after_create
    edit_user_path
  end
  
  def url_after_destroy
    sign_in_path
  end
  
end
