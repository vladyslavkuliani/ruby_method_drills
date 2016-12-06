#########################
#### USING ARGUMENTS ####
#########################
#say_hello
def say_hello()
  "hello"
end

#echo
def echo(str)
  str
end

def eddie_izzards_height(heel_height=0)
  heel_height += 67
end

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args'
def how_many_args(*args)
  args.size
end
#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments
  def find_answer(kwargs={})
    kwargs[:answer]
  end
