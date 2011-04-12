class PortsController < ApplicationController

  def index
    @ports = Port.all
  end

end
