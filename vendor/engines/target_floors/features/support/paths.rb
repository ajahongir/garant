module NavigationHelpers
  module Refinery
    module TargetFloors
      def path_to(page_name)
        case page_name
        when /the list of target_floors/
          admin_target_floors_path

         when /the new target_floor form/
          new_admin_target_floor_path
        else
          nil
        end
      end
    end
  end
end
