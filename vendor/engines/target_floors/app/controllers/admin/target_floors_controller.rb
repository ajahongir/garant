module Admin
  class TargetFloorsController < Admin::BaseController

    crudify :target_floor,
            :title_attribute => 'data', :xhr_paging => true

  end
end
