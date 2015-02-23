class FileImportsController < ApplicationController

  def index
    @file_imports = FileImport.all
  end

  def  import
    Importer.import(params[:file].read)
    redirect_to root_url
    flash[:notice] = "TaDa!."
  end

end
