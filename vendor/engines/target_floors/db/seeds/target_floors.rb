if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'target_floors').blank?
      user.plugins.create(:name => 'target_floors',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Target Floors',
    :link_url => '/target_floors',
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/target_floors(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end