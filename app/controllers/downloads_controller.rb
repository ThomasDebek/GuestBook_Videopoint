class DownloadsController < ApplicationController
  def index
    @downloads = Download.all
  end

  def new
    @download = Download.new
  end

  def create
    @download = Download.new(download_params)
    if @download.save
      flash[:notice] = "Dziekujemy za pobranie pliku"
    end
    redirect_to downloads_path
  end


  private
  def download_params
    params.require(:download).permit(:url, :body)
  end

end
