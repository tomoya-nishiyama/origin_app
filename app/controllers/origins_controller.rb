class OriginsController < ApplicationController

def index
  @origin = Origin.all
end

end
