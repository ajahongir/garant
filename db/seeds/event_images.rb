if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'event_images').blank?
      user.plugins.create(:name => 'event_images',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Event Images',
    :link_url => '/event_images',
    :show_in_menu => false,
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/event_images(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end

