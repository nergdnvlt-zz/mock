
namespace :ping do

  desc 'Removes Old Tweets'
  task one: :environment do
    ping_endpoint
  end

  def ping_endpoint
    gps = Beacon.first
    response = MachineService.post(1, gps)
    puts response
  end
end
