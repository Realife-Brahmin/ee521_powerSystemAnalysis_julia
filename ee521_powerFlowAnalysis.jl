using CSV
folderInput = "rawData/"
#inputData = CSV.read(folderInput*"ieee14cdf")

brand = ["Company A", "Company A", "Company A"]
tier = ["Premium", "Economy", "Standard"]
quantity = [10, 100, 50]
price = [100, 10, 50]
cost = [30, 7, 25]

mymatrix = [brand tier quantity price cost]
myprice = mymatrix[:, 4]
myeconomy = mymatrix[2, :]
myquantity = mymatrix[:, 3]
myrevenue = myquantity .* myprice
mymatrix = [mymatrix myrevenue]
mycost = mymatrix[:, 5]
myprofit = myquantity .* (myprice - mycost)
mymargin = myprofit ./ myrevenue
mymatrix = [mymatrix myprofit]
mytotalquantity = sum(myquantity)
mytotalrevenue = sum(myrevenue)
mytotalprofit = sum(myprofit)
mytotalmargin = mytotalprofit / mytotalrevenue
metrics = ["Quantity", "Revenue", "Profit", "Margin"]
totals = [mytotalquantity, mytotalrevenue, mytotalprofit, mytotalmargin]
mytotalmatrix = [metrics totals]
mymatrix = [mymatrix mymargin]
using DelimitedFiles
writedlm("mymatrix.csv", mymatrix, ',')