  # *************** Basic Syntax *************
myString <- "Hello, World!"
 print ( myString)

 # My first program in R Programming
 myString <- "Hello, World!"
 
 print ( myString)

 if(FALSE) {
   "This is a demo for multi-line comments and it should be put inside either a 
      single OR double quote"
 }
 
 myString <- "Hello, World!"
 print ( myString) 
# *************** Data Types *************
 # Vectors
 # Lists
 # Matrices
 # Arrays
 # Factors
 # Data Frame
 #The simplest of these objects is the vector object and there are six data types of these atomic vectors,
 #also termed as six classes of vectors. The other R-Objects are built upon the atomic vectors.
 
#1.LOgical 
 # v <- TRUE 
 # print(class(v))
#Numeric
 v <- 23.5
 print(class(v))
 #Integer
 v <- 2L
 print(class(v))
 #Complex
 v <- 2+5i
 print(class(v))
 #Character

 v <- "TRUE"
 print(class(v))
 # Raw "Hello" is stored as 48 65 6c 6c 6f
 v <- charToRaw("Hello")
 print(class(v))
 #Vectors

 # Create a vector.
 apple <- c('red','green',"yellow")
 print(apple)
 
 # Get the class of the vector.
 print(class(apple))
 #Lists
 # Create a list.
 list1 <- list(c(2,5,3),21.3,sin)
 
 # Print the list.
 print(list1)
 #Matrices\

 # Create a matrix.
 M = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
 print(M)
 #Arrays
 # Create an array.
 a <- array(c('green','yellow'),dim = c(3,3,2))
 print(a)
 #Factors
 
 # Create a vector.
 apple_colors <- c('green','green','yellow','red','red','red','green')
 
 # Create a factor object.
 factor_apple <- factor(apple_colors)
 
 # Print the factor.
 print(factor_apple)
 print(nlevels(factor_apple))
 #Data Frames
 
 # Create the data frame.
 BMI <- 	data.frame(
   gender = c("Male", "Male","Female"), 
   height = c(152, 171.5, 165), 
   weight = c(81,93, 78),
   Age = c(42,38,26)
 )
 print(BMI)
 #     R - Variables
 #var_name2.	valid	Has letters, numbers, dot and underscore
 #var_name%	Invalid	Has the character '%'. Only dot(.) and underscore allowed.
 #2var_name	invalid	Starts with a number
 #.var_name,
 
 # var.name
 # 
 # valid	Can start with a dot(.) but the dot(.)should not be followed by a number.
 #.2var_name	invalid	The starting dot is followed by a number making it invalid.
 #_var_name	invalid	Starts with _ which is not valid
 
 
 #    Variable Assignment
 # Assignment using equal operator.
 var.1 = c(0,1,2,3)           
 
 # Assignment using leftward operator.
 var.2 <- c("learn","R")   
 
 # Assignment using rightward operator.   
 c(TRUE,1) -> var.3           
 
 print(var.1)
 cat ("var.1 is ", var.1 ,"\n")
 cat ("var.2 is ", var.2 ,"\n")
 cat ("var.3 is ", var.3 ,"\n")
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 