#Welcome message
puts "Let's play a game!\n\n 3 \n 2 \n 1"
welcome_emoji = "🚀"
puts welcome_emoji * 20

# Player data
name = "finn"
health = 60


# helper method that prints Health Info -uses keyword parameters-
def health_info(name:,health:)
  health_status = "#{name.capitalize}'s health is #{health}"
  puts health_status
end

health_info(health: health ,name: name )