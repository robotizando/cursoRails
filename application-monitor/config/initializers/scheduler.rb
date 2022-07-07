require 'rufus-scheduler'
require 'rest-client'
require 'json'



# Let's use the rufus-scheduler singleton
#
s = Rufus::Scheduler.singleton

# Awesome recurrent task...
#
s.every '3s' do


  #c = MainController.new
  #r = c.getMonitor
  #Rails.logger.info r.to_json +  "#{Time.now}"
end
