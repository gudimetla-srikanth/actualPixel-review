class WelcomeController < ApplicationController
  def index
    @user = User.all
  end
  def upload 
  end
  def import
    if params[:file].present?
      file = File.open(params[:file])
      csv = CSV.parse(file,headers: true,col_sep:",")
      puts "======================================================="
      csv.each {|row| puts row.to_hash}
      puts "+++++++++++++++++++++++++++++++++++++++++++++++++++"
    end
    byebug
    redirect_to root_path
  end
end