require './lib/boxes'
require './lib/rocks'
@current_box = Box.all
@current_box_rock_count

def main_menu
	loop do
		system("clear")
		if Box.all.any?
			print "Your current box: #{@current_box.color}\n\n"
		end
		puts "[== Main Menu ==]"
		puts "[1] Create a Box"
		puts "[2] Create a Rock"
		puts "[3] Put some rocks in your current box"
		puts "[4] Polish and shape some of your rocks from a box"
		puts "[x] Exit and throw away rocks\n\n"

		print "Enter Choice: "
		menu_choice = gets.chomp
		if menu_choice == '1'
			create_box
		elsif menu_choice == '2'
			create_rock
		elsif menu_choice =='x'
			puts "Your box and rocks disappear"
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
	Rock.new({:shape =>shape, :size=>size , :weight=>weight }).save
	@current_rock = Rock.new.last
	puts "\n\nYour new rock is shaped like: #{@current_rock.shape}"
	puts "It is a #{@current_rock.shape} shaped rock and its got a #{@current_rock.weight} weight\n\n"
end

def put_in_box

end

main_menu
