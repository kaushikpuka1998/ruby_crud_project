class DemoController < ApplicationController

  layout false
  def index
    @array = [1,2,3,4,5,6]
    render ('index')
  end

  def hello
    redirected_to(index_path)
  end


  def new
    @array = [1,2,3,4,5,6]
  end
end
