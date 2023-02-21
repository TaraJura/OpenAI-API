class StatsController < ApplicationController
  def index
    @request = Typhoeus::Request.new(
      'https://seznam.cz',
      method: :post,
      body: {},
      params: {},
      headers: {}
    ).run
  end
end
