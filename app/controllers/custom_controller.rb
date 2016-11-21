class CustomController < ApplicationController
  def heartbeat
    render plain: "doki doki"
  end
end
