if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'flats').blank?
      user.plugins.create(:name => 'flats',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Квартира',
    :link_url => '/flats',
    :deletable => false,
    :show_in_menu => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/flats(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end

