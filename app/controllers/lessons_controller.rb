class LessonsController < ApplicationController

  def new
    @language = Language.find(params[:language_id])
    @lesson = @language.lessons.new
  end

  def show
    @language = Language.find(params[:language_id])
    @lesson = Lesson.find(params[:id])

    render :show
  end

  def create
    @language = Language.find(params[:language_id])
    @lesson = @language.lessons.new(lesson_params)
    if @lesson.save
      redirect_to language_path(@lesson.language)
    else
      render :new
    end
  end

  def edit
    @language = Language.find(params[:language_id])
    @lesson = Lesson.find(params[:id])
    render :edit
  end

  def update
    @language = Language.find(params[:language_id])
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to language_path(@lesson.language)
    else
      render :edit
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :content)
  end
end
