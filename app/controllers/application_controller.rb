# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  KEYS = ['iAn7lkKN83hJf483L5Pd6']
  before_filter 	:authorize, :except => [:welcome]
  helper :all # include all helpers, all the time
  # protect_from_forgery # See ActionController::RequestForgeryProtection for details
        
  def	authorize
  	unless params[:key] &&  KEYS.include?(params[:key]) 
  		respond_to do |format|
        format.html { redirect_to(:controller => "jobs", :action => "welcome") }
        format.xml  { render :xml => '<?xml version="1.0" encoding="UTF-8"?><error type="authentication"/>', :status => :unprocessable_entity }
      end
  	end
  end
    
  def params_to_conditions(params)
    # control_bars?control_bar[name]=vinod,bob,canada,ANOTHER&member_id=1
    condition_hash = {}
    condition_hash.merge!(params[self.controller_name.singularize]) if params[self.controller_name.singularize]    
    keys = []
    values = []
    condition_hash.each do |key, value|
      keys << key.to_s + ' IN (?) '
      values.push(value.to_s.split(/,/))
    end
    conditions = values.unshift(keys.join(' AND ')) 
  end
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
