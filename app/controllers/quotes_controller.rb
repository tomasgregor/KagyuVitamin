class QuotesController < ApplicationController
  
  def today
    @quote_today = Quote.all.shuffle[0]
  end
  
  def index
    @quotes = Quote.all
    
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
    
  def teacher
    @quotes = Quote.where(:teacher => params[:id].capitalize)
  end
  
  def show
    @quote = Quote.find_by_id(params[:id])
  end
  
  def new
    @quote = Quote.new
  end
  
  def edit
    @quote = Quote.find_by_id(params[:id])
  end
  
  def create
    @quote = Quote.new
    @quote.quote = params[:quote][:quote]
    @quote.teacher = params[:quote][:teacher]
    @quote.posted_by = params[:quote][:posted_by]
    if @quote.save
      # re-active mailer after confirmation from Sendgrid
      # MyMailer.quote_email(@quote).deliver
      redirect_to quotes_url
    else
      render 'new'
    end
  end
  
  def update
    @quote = Quote.find_by_id(params[:id])
    @quote.quote = params[:quote][:quote]
    @quote.teacher = params[:quote][:teacher]
    @quote.posted_by = params[:quote][:posted_by]
    if @quote.save
      redirect_to quotes_url
    else
      render 'edit'
    end
  end
  
  def destroy
    p= Quote.find_by_id(params[:id])
    p.destroy
    
    redirect_to quotes_url
  end
  
end
