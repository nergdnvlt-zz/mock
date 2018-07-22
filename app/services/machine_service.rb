class MachineService

  def self.post(gps)
    new(gps).parsed_request
  end

  def parsed_request
    JSON.parse(interval_request.body, symbolize_names: true)
  end

  private

  def initialize(gps)
    @gps = gps
  end

  def conn
    Faraday.new('https://machine-ltd.herokuapp.com/api/v1/devices/1')
  end

  def interval_request
    conn.post do |req|
      req.body = {"location": "#{@gps.location}"}
    end
  end
end
