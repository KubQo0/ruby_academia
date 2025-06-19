class PagesController < ApplicationController
  def about
    @user = User.new(name: "jakub", hobby: [ 1, 2, 3 ], hidden: true)
  end

  def home
  end
end
