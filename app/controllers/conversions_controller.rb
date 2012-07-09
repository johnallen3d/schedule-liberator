class ConversionsController < ApplicationController
  def create
    begin
      schedule = ScheduleScraper.fetch(params[:url])

      render :json => { :schedule => schedule.to_h }
    rescue Exception => e
      logger.info e
      render :nothing => true
    end
  end
end
