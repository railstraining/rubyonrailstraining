#definition of instance methods methods
 def sample
   puts "this is ample method"
 end
 
 def sample_demo
   puts "this is sample demo method
 end

 
#calling of methods
 sample
#this is ample method
# => nil 
 sample_demo
#this is sample demo method
# => nil 

# 1. self methods
    a. with arguments and with return type
    b. with arguments and without return type
    c.without arguments and with return type
    d. without arguments and without return type
# 2.instance methods
    a. with arguments and with return type
    b. with arguments and without return type
    c.without arguments and with return type
    d. without arguments and without return type



def sample_type1 a,b
 return a+b
end

sample_type1 2,3


def sample_type2 a,b
 puts a+b
end

sample_type2 2,3


def sample_type3
 a=20
 b=30
 return a+b
end

sample_type3 2,3


def sample_type4
  a=20
  b=60
  puts a+b
end

sample_type4 2,3


#https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls

# methods with default value

#here a,b are default arguments and c is mandatory argument

  def sample(a="heloo",b="world",c)
     puts a
  end

 sample 2
  helloo 
 sample "world"
  world
 sample "helloo","world",10

# methods with astreic operator, It will used for variable length of argument list

def sample_demo(a,b,*c)
  puts a
  puts b
  puts c
end

sample _demo 1,2,3,4,5


## methods with ampersand operator
   # &f is used to store block object,block object is created using lambda and proc
   # yield is used to invove blocks and yield is equal to block_object.call  

def contrived(a, &f)
      # the block can be accessed through f
      f.call(a)
      
      # but yield also works !
      yield(a)
end
  
  # this works
  contrived(25) {|x| puts x}
  
  # this raises ArgumentError, because &f 
  # isn't really an argument - it's only there 
  # to convert a block
  contrived(25, lambda {|x| puts x})
25
25


def contrived(a, &f)
      # the block can be accessed through f
      f.call(35)

      # but yield also works !
      yield(a)
end
  
  # this works
  contrived(25) {|x| puts x}
  
  # this raises ArgumentError, because &f 
  # isn't really an argument - it's only there 
  # to convert a block
  contrived(25, lambda {|x| puts x})
35
25


# boolean methods ::  methods that ends with ? are called boolean methods

  boolean methods allways returns either true or false
# destructive methods :: methods ends with ! and these use used to modify source object also

a = "sample"
b = a.reverse!


