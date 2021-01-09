class SubjectsController < ApplicationController

  layout false
  def new
  end

  def create

  end


  def index
    @subjects = Subject.sorted
  end

  def show

  end

  def edit
  end

  def update
  end

  def delete
  end


  def destroy

  end
end
