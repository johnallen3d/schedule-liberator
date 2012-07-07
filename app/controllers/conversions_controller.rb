class ConversionsController < ApplicationController
  def create
    begin
      logger.info schedule_type
      schedule = ScheduleScraper.fetch(schedule_type, params[:url])

      render :json => { :schedule => schedule.to_h }
    rescue Exception => e
      logger.info e
      render :nothing => true
    end
  end
end
