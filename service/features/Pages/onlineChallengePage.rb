class OnlineChallenge
  include HTTParty
  include RSpec::Matchers

  base_uri 'http://desafioonline.webmotors.com.br'
  format :json

  def getMaker
    self.class.get('/api/OnlineChallenge/Make')
  end

  def getModel(id)
    self.class.get("/api/OnlineChallenge/Model?MakeID=#{id}")
  end

  def getVersion(id)
    self.class.get("/api/OnlineChallenge/Version?ModelID=#{id}")
  end
end