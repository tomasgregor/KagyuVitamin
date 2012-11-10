class QuotesController < ApplicationController
  
  http_basic_authenticate_with :name => "tomas108", :password => "kagyu108", :only => [ :index, :verify, :show, :update, :destroy ]
  
  def today
    @quote_today = Quote.where(:verification => 1).shuffle[0]
  end
  
  def index
    @quotes = Quote.where(:verification => 1)
    
    respond_to do |format|
      format.html
      format.json do
        render :json => @quotes
      end
      format.xml do
        render :xml => @quotes
      end
    end
  end
  
  def show
    @quote = Quote.find_by_id(params[:id])
  end
  
  def verify
    @quotes = Quote.where(:verification => 0) + Quote.where(:verification => nil)
    
    respond_to do |format|
      format.html
      format.json do
        render :json => @quotes
      end
      format.xml do
        render :xml => @quotes
      end
    end
  end
  
  def new
    @quote = Quote.new
  end
  
  def edit
    @quote = Quote.find_by_id(params[:id])
  end
  
  def create
    @quote = Quote.new(params[:quote])
    if @quote.save
      # re-active mailer after confirmation from Sendgrid
      MyMailer.quote_email(@quote).deliver
      
      redirect_to confirmation_url 
    else
      render 'new'
    end
  end
  
  def update
    @quote = Quote.find_by_id(params[:id])
    @quote.quote = params[:quote][:quote]
    @quote.teacher = params[:quote][:teacher]
    @quote.source = params[:quote][:source]
    @quote.posted_by = params[:quote][:posted_by]
    @quote.verification = params[:quote][:verification]
    if @quote.save
      redirect_to quotes_url
    else
      render 'edit'
    end
  end
  
  def destroy
    p= Quote.find_by_id(params[:id])
    p.destroy
    
    redirect_to verify_url
  end
  
end
