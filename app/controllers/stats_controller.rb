# frozen_string_literal: true

class StatsController < ApplicationController
  def index
    @request = Riot.new.free_champions
  end
end
