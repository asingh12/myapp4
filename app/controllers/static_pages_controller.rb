class StaticPagesController < ApplicationController


 
  
   def home
>>>>>>> 250a0a5431064f8a84c90dbc077dd456a4582a14
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
