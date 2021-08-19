#do not run/mark info#
#c concatenate together#
#+ in the concole means you need close sth#
#control 1 is here control 2 is console control l is cleaning console#
#%/% can get quotient %% gives reminder#
#default numeric using L at the end of every numbers or as.intege#
#fn f key#
#factor(c(1:2, NA), exclude = NULL) # always did#
first_vector <- c(1, 3, 5, 7)
first_vector * 10 #vectorizd#
second_vector <- c(6,8)
second_vector %% 3
test_vec <- c(10, 20, 30, 40, 50)
typeof(test_vec)
test_vec_int <- as.integer(test_vec)
character_vector <- c("ABC", "abc", "1,000", "$100", 123)
test2_vec_int <- as.numeric(character_vector)
factor_variable <- as.factor(c("freshman", "sophomore", "junior", "senior"))
factor_variable
ordered_factor <- ordered(factor_variable, 
                          levels = c("freshman", "sophomore", "junior", "senior"), 
                          labels = c("freshman", "sophomore", "junior", "senior"))
is.ordered(ordered_factor)
#ordered()函数不能指定特定因子水平的顺序，通常情况下，因子中先出现的水平小于后出现的水平。#
matrix_example <- matrix(data = c(1:3, 4:6, 7:9), 
                         nrow = 3, 
                         ncol = 3)
matrix_example # must be of the same type
list_example <- list(names = c("seth", "sharif"), 
                     ages = c(30, 30), 
                     height = c(76, 76))
list_example
list_example$ages
list_example["names"]
list_example[1]
list_of_lists <- list(professors = list(names = c("seth", "sharif"), 
                                        ages = c(30, 30), 
                                        height = c(76, 76)), 
                      students = list(names = c("joe", "hexuan"), 
                                      ages = c(23, 25), 
                                      height = c(64, 64)))
list_of_lists[["professors"]] #double brackets#
`$`(list_example, names)
`[[`(list_of_lists, "professors") #just function#
list_of_lists |> 
  getElement(1) |> #get element in it pass info from a to b#
  getElement("names")
df_example <- data.frame(name = c("seth", "sharif",
                                  "joe", "hexuan", 
                                  "hermalena"), 
                         age = c(30, 30, 23, 25, 30), 
                         height = c(76, 76, 64, 64, 68), 
                         role = c("professor", "professor", 
                                  "student", "student", 
                                  "student_services"))
df_example
View(df_example)
str(df_example) #for looking at the structure
names(df_example) #get column names
dim(df_example) #get dimension
df_example[, c("age", "role")] #get whole rows and specific columns
df_example[, c(2:4)] #but do not use the magic num bers always use the name
df_example[df_example$role == "student" & 
             df_example$name == "joe", ] #connot put role here
df_example[df_example$age >28, ] #filt 
mean(df_example$age)
aggregate(df_example$age,by = list(group = df_example$role), mean)
aggregate(age ~ role, 
          df_example, 
          mean)             #easiest one#
aggregate(age~role, 
          data = df_example[df_example$height >=72, ] ,
          mean)
df_example[df_example$height >72,]
install.packages("swirl")
library("swirl")
swirl()


#ls -al ~/.ssh/#


st_joe_land <- read.delim(file = "stJoeLand.csv", sep = ",")

st_joe_land <- read.csv(file = "stJoeLand.csv")
install.packages("readxl")
st_joe_land_readr <- readr::read_csv(file = "stJoeLand.csv")
st_joe_land_datatable <- data.table::fread(input = "stJoeLand.csv")
names(st_joe_land_datatable)[names(st_joe_land_datatable) == "Zip Code"] <- 
  "Zip_Code"
install.packages("readxl")
st_joe_land_excel <- readxl::read_excel(path = "stJoeLand.xlsx")
save(st_joe_land, st_joe_land_datatable, file = "stJoeInfo.RData")
load("stJoeInfo.RData")

my_mean <- function(numbers) {
  # The length function gives the length
  # of a vector. Use nrow for number of
  # rows in a data.frame.
  numbers_length <- length(numbers)
  numbers_sum <- sum(numbers)
  numbers_average <- numbers_sum / numbers_length
  # The return function isn't strictly necessary,
  # but it is a safe way of handling this. You could
  # also just put numbers_average at the end and
  # it would print out.
  return(numbers_average)
}

my_mean(st_joe_land$sale_price)

mean_scaler <- function(numbers, center = TRUE) {
  if(center == TRUE) {
    result <- my_mean(numbers - my_mean(numbers))
  } else result <- my_mean(numbers)
  return(result)
}

x<-1:3










