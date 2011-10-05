module NavigationHelpers
  module Refinery
    module EventImages
      def path_to(page_name)
        case page_name
        when /the list of event_images/
          admin_event_images_path

         when /the new event_image form/
          new_admin_event_image_path
        else
          nil
        end
      end
    end
  end
end
