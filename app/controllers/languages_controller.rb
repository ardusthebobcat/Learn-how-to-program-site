class LanguagesController < ApplicationController
  def index
    @languages = Language.all
    render :index
  end

  def new
    @language = Language.new
    render :new
  end

  def create
    @language = Language.new(language_params)
    if @language.save
      redirect_to language_path(@language)
    else
      render :new
    end
  end

  def show
    @language = Language.find(params[:id])
    render :show
  end

  def edit
    @language = Language.find(params[:id])
    render :edit
  end

  def update
    @language = Language.find(params[:id])
    if @language.update(language_params)
      redirect_to languages_path
    else
      render :edit
    end
  end

  def destroy
    @language = Language.find(params[:id])
    @language.destroy
    redirect_to languages_path
  end

  private
  def language_params
    params.require(:language).permit(:name)
  end
end
