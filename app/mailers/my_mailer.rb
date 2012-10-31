class MyMailer < ActionMailer::Base
  default from: "new@kagyuvitamin.org"
  
  def quote_email(quote)
      @quote  = quote
      mail(:to => "tomas.gregor@me.com", :subject => "New Kagyu Vitamin")
    end
  
end
