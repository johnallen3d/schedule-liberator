class ExportsController < ApplicationController
  def create
    begin
      schedule = ScheduleScraper.fetch(schedule_type, params[:url])
      format = params[:to].to_sym

      send_data schedule.send("to_#{format}")
    rescue Exception => e
      logger.info e
      render :nothing => true
    end
  end
end
