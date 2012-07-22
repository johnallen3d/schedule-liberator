class ExportsController < ApplicationController
  def create
    begin
      schedule = ScheduleScraper.fetch(params[:url])
      format = params[:to].to_sym

      send_data schedule.send("to_#{format}"), :filename => filename
    rescue Exception => e
      logger.info e
      render :nothing => true
    end
  end

  private

  def filename
    extension = params[:to] == "ical" ? "ics" : "csv"

    "export.#{extension}"
  end
end
