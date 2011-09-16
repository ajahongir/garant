module Admin
  class TargetsController < Admin::BaseController
    before_filter :date_convet, :only => [:create, :update]
    crudify :target,
            :title_attribute => 'name', :xhr_paging => true

    def date_convet
      params[:target][:date_start] = [params[:target][:date_start][:year], params[:target][:date_start][:month], params[:target][:date_start][:day]].join("-")
      params[:target][:date_end] = [params[:target][:date_end][:year], params[:target][:date_end][:month], params[:target][:date_end][:day]].join("-")
    end

  end
end

