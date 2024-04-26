class WelcomeController < ApplicationController
  def index
    @user = User.all
  end
  def upload 
  end
  def import
    if params[:file].present?
      file = params[:file].read
      csv = CSV.parse(file,headers: true)
      puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
      csv.each do |row|
        puts row["title"]
      end
      puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    end
    
    redirect_to root_path
  end
  def mine
    respond_to do |format|
      format.html 
      format.csv { send_data User.gen,filename: "darta.csv",type: 'text/csv'}
      format.xml
    end 
  end
end