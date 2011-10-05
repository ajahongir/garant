module NavigationHelpers
  module Refinery
    module Targets
      def path_to(page_name)
        case page_name
        when /the list of targets/
          admin_targets_path

         when /the new target form/
          new_admin_target_path
        else
          nil
        end
      end
    end
  end
end
