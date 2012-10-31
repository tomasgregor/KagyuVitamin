class MyMailer < ActionMailer::Base
  default from: "tomasg10@gmail.com"
  
  def quote_email(quote)
      @quote  = quote
      mail(:to => "tomas.gregor@me.com", :subject => "New Kagyu Vitamin")
  end
  
end
