# read data - only requirement from this function is that data is a data.frame with names yearclass, recruitment, index1, index2, ...
#           - can optionally have an attribute "stock" with the stock name in it

fname <- ""
whi.dat <- read.rct3(fname, sep = ",")

formula <- recruitment ~ ibtsq1age1 + ibtsq1age2 + ibtsq3age0 + ibtsq3age1

my_rct3 <- rct3(formula, whi.dat, predictions = 2007:2008)

my_rct3