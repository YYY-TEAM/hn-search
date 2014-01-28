class HomeController < ApplicationController
  def index
  end

  def legacy
    render action: 'index'
  end

  def beta
  end

  def follow
    @story = Item.where(item_type_cd: Item.story).where(deleted: false).find(params[:story_id])
  end

  def feed
    @stories = Item.where(item_type_cd: Item.story).where(deleted: false).order('id DESC').first(20).reverse
  end
end
