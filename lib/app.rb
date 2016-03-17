require 'json'
#jonshea wrote in the forum:
  #My suggestion would be to put all the method definitions
  #at the top of the file and the method calls near the bottom.

#Get path to products.json, read the file into a string,
#and transform the string into a usable hash
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
# Print "Products" in ascii art
def print_products_ASCII
  $report_file.puts "

  ╔═╗┬─┐┌─┐┌┬┐┬ ┬┌─┐┌┬┐┌─┐
  ╠═╝├┬┘│ │ │││ ││   │ └─┐
  ╩  ┴└─└─┘─┴┘└─┘└─┘ ┴ └─┘
"
end
# Print "Brands" in ascii art
def print_brands_ASCII
  $report_file.puts "

  ╔╗ ┬─┐┌─┐┌┐┌┌┬┐┌─┐
  ╠╩╗├┬┘├─┤│││ ││└─┐
  ╚═╝┴└─┴ ┴┘└┘─┴┘└─┘
"
end
# Print today's date
def print_date
  date = Time.now.strftime("%m/%d/%Y")
  $report_file.puts "  Date: #{date}"
end

# For each product in the data set:
	# Print the name of the toy
  # Print the retail price of the toy
	# Calculate and print the total number of purchases
	# Calculate and print the total amount of sales
	# Calculate and print the average price the toy sold for
	# Calculate and print the average discount (% or $) based off the average sales price



# For each brand in the data set:
	# Print the name of the brand
	# Count and print the number of the brand's toys we stock
	# Calculate and print the average price of the brand's toys
	# Calculate and print the total sales volume of all the brand's toys combined

  def create_report
    print_sales_report_ASCII
    print_date
    print_products_ASCII
    print_brands_ASCII
  end

start
