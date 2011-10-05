module NavigationHelpers
  module Refinery
    module Flats
      def path_to(page_name)
        case page_name
        when /the list of flats/
          admin_flats_path

         when /the new flat form/
          new_admin_flat_path
        else
          nil
        end
      end
    end
  end
end
