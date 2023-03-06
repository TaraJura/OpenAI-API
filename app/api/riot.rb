# frozen_string_literal: true

class Riot
  def initialize
    @api_key = '?api_key=RGAPI-eaeb144d-9f90-4471-b50b-8725702f09fa'
    @url = 'https://na1.api.riotgames.com/lol/platform/v3/champion-rotations?api_key=' + @api_key
  end

  def free_champions
    @request = Typhoeus::Request.new(
      @url,
      method: :get,
      body: {},
      params: {},
      headers: {}
    ).run
  end

  def account(name)
    url = 'https://eun1.api.riotgames.com/lol/summoner/v4/summoners/by-name/' + name + @api_key
    @request = Typhoeus::Request.new(
      url,
      method: :get,
      body: {},
      params: {},
      headers: {}
    ).run
  end
end
