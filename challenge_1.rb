# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

# ==========================================
# Your code to define the method goes here.
# ==========================================


def pmt(interestrate, numberofmonths,principal )
	payment = 0.0
	payment = (principal * interestrate* ((1 + interestrate)**numberofmonths)).to_f
	payment = (payment/ (((1+interestrate)**numberofmonths)- 1)).to_f
	return payment.round
end 

puts "Your monthly payment will be #{pmt(0.01, 60, 30000)}."
