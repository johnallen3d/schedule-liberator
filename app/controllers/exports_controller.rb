class ExportsController < ApplicationController
  def create
    begin
      schedule = ScheduleScraper.fetch(:pointstreak, params[:url])
      format = params[:to].to_sym

      render format => schedule #, :content_type => 'text/calendar'
    rescue Exception => e
      logger.info e
      render :nothing => true
    end
  end
end