require 'faker'

3.times do
	t = Topic.create(name: Faker::Lorem.words(1))
	4.times do
		t.bookmarks.create(name: Faker::Lorem.words(1), url: Faker::Internet.domain_name)
	end
end

puts "Seed finished"
puts "#{Bookmark.count} bookmarks created"
puts "#{Topic.count} topics created"