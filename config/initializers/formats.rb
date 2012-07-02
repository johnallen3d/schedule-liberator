ActionController::Renderers.add :csv do |csv, options|
  self.content_type ||= Mime::CSV
  self.response_body  = csv.respond_to?(:to_csv) ? csv.to_csv : csv
end

ActionController::Renderers.add :gcal do |gcal, options|
  self.content_type ||= Mime::CSV
  self.response_body = gcal.respond_to?(:to_gcal) ? csv.to_gcal : gcal
end

# ActionController::Renderers.add :ical do |ical, options|
#   self.content_type ||= Mime::ICAL
#   self.response_body = ical.respond_to?(:to_ical) ? csv.to_ical : ical
#   # self.content_type ||= "text/calendar; charset=UTF-8"
#   # self.response_body  = ical
# end
