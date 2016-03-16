require 'json'

# Get path to products.json, read the file into a string,
# and transform the string into a usable hash
def setup_files
    path = File.join(File.dirname(__FILE__), '../data/products.json')
    file = File.read(path)
    $products_hash = JSON.parse(file)
    $report_file = File.new("report.txt", "w+")
end

def start
  setup_files # load, read, parse, and create the files
  create_report # create the report!
end
# Print "Sales Report" in ascii art
# ascii art font is CalvinS from <patorjk.com>
def print_sales_report_ASCII
  $report_file.puts "


  ╔═╗┌─┐┬  ┌─┐┌─┐  ╦═╗┌─┐┌─┐┌─┐┬─┐┌┬┐
  ╚═╗├─┤│  ├┤ └─┐  ╠╦╝├┤ ├─┘│ │├┬┘ │
  ╚═╝┴ ┴┴─┘└─┘└─┘  ╩╚═└─┘┴  └─┘┴└─ ┴


"
end
def create_report
  print_sales_report_ASCII
  print_date
end

# Print today's date
def print_date
  date = Time.now.strftime("%m/%d/%Y")
  $report_file.puts "  Date: #{date}"
end

start

# Print "Products" in ascii art

# For each product in the data set:
	# Print the name of the toy
	# Print the retail price of the toy
	# Calculate and print the total number of purchases
	# Calculate and print the total amount of sales
	# Calculate and print the average price the toy sold for
	# Calculate and print the average discount (% or $) based off the average sales price

# Print "Brands" in ascii art

# For each brand in the data set:
	# Print the name of the brand
	# Count and print the number of the brand's toys we stock
	# Calculate and print the average price of the brand's toys
	# Calculate and print the total sales volume of all the brand's toys combined
