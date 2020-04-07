class HomeController < ApplicationController
  layout :resolve_layout

  def index
  end

  def challenges
  end

  private

  def resolve_layout
    case action_name
    when "index"
      "landing"
    else
      "application"
    end
  end
end
