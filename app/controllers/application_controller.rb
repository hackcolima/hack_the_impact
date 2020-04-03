class ApplicationController < ActionController::Base
  before_action :add_www_subdomain, if: proc { Rails.env.production? }

  private

  def add_www_subdomain
    return if /^www/.match(request.host)

    redirect_to("#{request.protocol}www.hackcolima.com#{request.fullpath}", status: 301)
  end
end
