module Admin
  class TargetsController < Admin::BaseController

    crudify :target,
            :title_attribute => 'name', :xhr_paging => true

  end
end
