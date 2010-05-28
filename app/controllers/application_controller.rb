# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  KEYS = ['iAn7lkKN83hJf483L5Pd6']
  before_filter 	:authorize, :except => [:welcome]
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
        
  def	authorize
  	unless params[:key] &&  KEYS.include?(params[:key]) 
  		respond_to do |format|
        format.html { redirect_to(:controller => "jobs", :action => "welcome") }
        format.xml  { render :xml => '<?xml version="1.0" encoding="UTF-8"?><error type="authentication"/>' }
      end
  	end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
