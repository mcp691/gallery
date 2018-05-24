class StaticPagesController < ApplicationController
  def home
    @products = Product.limit(5)
  end

  def about
  end

  def contact
  end
end
