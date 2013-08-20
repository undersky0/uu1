class ApiController < ApplicationController
  
  before_filter :authenticate_user!, :only => [:create_key, :users]#, :activity_atom_feed]
  
  def create_key
    current_user.reset_authentication_token!
    if params[:api_settings].present?
      redirect_to settings_path(:api_settings => true)
      return
    end
    redirect_to :controller => :users, :action => :show, :id => current_user.to_param, :auth_token => params[:auth_token]
  end
  
  def users
    if !params[:id]
      params[:id]=current_user.to_param
    end
    
    if !params[:format]
      params[:format]='xml'
    end
        
    redirect_to :controller => :users, :action => :show, :format => params[:format], :id => params[:id], :auth_token => params[:auth_token]
  end
end
