class SitesController < ApplicationController
  def new
  end

def create
  url = params.require(:site)[:url]
  site = Site.create(url: url)
  LinksWorker.perform_async(site.id)
end

  def show
  end
end
