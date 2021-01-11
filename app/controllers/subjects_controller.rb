class SubjectsController < ApplicationController

  layout false
  def new
    @subject = Subject.new()
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to(subject_path(@subject))
    else
      render('new')
    end
  end


  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def edit
    @subject = Subject.find(params[:id])
    
  end

  def update
    @subject = Subject.find(params[:id])
    if  @subject.update(subject_params)
     
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
    
  end

  def delete
    @subject = Subject.find(params[:id])
  end


  def destroy
    @subject = Subject.find(params[:id])
    
    if(@subject.destroy)
      redirect_to(subjects_path)
    else
      render('delete')
    end
  end


  private

    def subject_params
      params.required(:subject).permit(:name,:position,:visible)
    end
end
