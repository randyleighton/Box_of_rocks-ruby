require './lib/boxes'
require './lib/rocks'


def main_menu
	loop do
		system("clear")
		puts "[== Main Menu ==]"
		puts "[1] Create a Box"
		puts "[2] Create a Rock"
		puts "[3] Put some rocks in your current box"
		puts "[4] Polish and shape some of your rocks from a box"
		puts "[x] Exit and throw away rocks\n\n"
		puts "[v] View Box of Rocks (after you added some to it)\n\n"
		print "Enter Choice: "
		menu_choice = gets.chomp
		if menu_choice == '1'
			create_box
		elsif menu_choice == '2'
			create_rock
		elsif menu_choice == '3'
			put_in_box
		elsif menu_choice == '4'
			reshape_rock
		elsif menu_choice == 'v'
			view_box_of_rocks
		elsif menu_choice =='x'
			system("clear")
			puts "\n\nYou vaguely remember holding a box of rocks..\n\n"
			exit
		else
			puts "Choose more wisely.\n\n"
		end
	end
end

def create_box
	puts "\n\n[Create a Box]\n\n"
	print "Enter a description of the shape: "
	shape = gets.chomp
	print "Enter a description of the size: "
	size = gets.chomp
	print "Enter a description of the color: "
	color = gets.chomp
	Box.new({:shape =>shape, :size=>size , :color=>color }).save
	@current_box = Box.all.last
	puts "\n\nYour box has been created! It is shaped like: #{@current_box.shape} "
	puts "It is a #{@current_box.size} size box, and it has a color of: #{@current_box.color}\n\n"
end

def create_rock
	puts "\n\n[Create a Rock]\n\n"
	print "Enter a description of the shape: "
	shape = gets.chomp
	print "Enter a description of the size: "
	size = gets.chomp
	print "Enter a description of the weight: "
	weight = gets.chomp
	Rock.new({:shape =>shape, :size=>size, :weight=>weight}).save
	@current_rock = Rock.new.last
	puts "\n\nYour new rock is shaped like: #{@current_rock.shape}"
	puts "It is a #{@current_rock.shape} shaped rock and its got a #{@current_rock.weight} weight\n\n"
end

def put_in_box
	view_rocks
	puts "\n\nWhich rock [#] would you like to put into the box"
end

def reshape_rock

end

def view_box_of_rocks
	puts "List of Boxes:"
	Box.all.each_with_index do |box, index|
		puts "[#{index+1}]#{box.shape} shaped #{box.size}
					sized #{box.color} colored box"
	end
	puts "Choose a box [#] to see the Rocks!"
	box_choice = gets.chomp.to_i
	@current_box = Box.all[box_choice]
	puts "#{@current_box.color} box contains: "
	@current_box.rocks_in_the_box.each do |rock|
		puts "[#{index+1}]#{rock.shape} shaped #{rock.weight}
					weighted #{rock.color} colored rock"
	end
end

def view_rocks
	puts "List of Rocks:"
	Rock.all.each_with_index do |rock, index|
		puts "[#{index+1}]#{rock.shape} shaped #{rock.weight}
					weighted #{rock.color} colored rock"
	end
end

main_menu
