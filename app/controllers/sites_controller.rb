class SitesController < ApplicationController
  def new
  end

def create
  url = params.require(:site)[:url]
  site = Site.create(url: url)
  LinksWorker.perform_async(site.id)
  redirect_to post_path(post.id)
end

  def show
  end
end
