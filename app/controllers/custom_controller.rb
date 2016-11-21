class CustomController < ApplicationController
  def heartbeat
    render inline: "doki doki"
  end
end
