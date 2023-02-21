class StatsController < ApplicationController
  def index
    @request = Typhoeus::Request.new(
      'https://euw1.api.riotgames.com/lol/platform/v3/champion-rotations?api_key=RGAPI-f527bb99-1013-4a25-b357-f9e7c7e71889',
      method: :get,
      body: {},
      params: {},
      headers: {}
    ).run
  end
end
