class ApplicationController < ActionController::Base
  protect_from_forgery

  def schedule_type
    case params[:url]
    when /pointstreak/
      :pointstreak
    when /ezfacility/
      :ezleagues
    else
      nil
    end
  end
end
