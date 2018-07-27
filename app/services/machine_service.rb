class MachineService

  def self.post(device_id, gps)
    new(device_id, gps).parsed_request
  end

  def parsed_request
    JSON.parse(interval_request.body, symbolize_names: true)
  end

  private

  def initialize(device_id, gps)
    @device_id = device_id
    @gps = gps
  end

  def conn
    Faraday.new('https://machine-ltd.herokuapp.com/api/v1/devices/')
  end

  def interval_request
    conn.post do |req|
      req.url "#{@device_id}"
      req.body = {"lat": "#{@gps.lat}", "long": "#{@gps.long}"}.to_json
    end
  end
end
