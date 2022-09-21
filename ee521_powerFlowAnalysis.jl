using DataVoyager
using VegaDatasets
using VegaLite
using CSV

data = dataset("iris")
print(data)
vscodedisplay(data)

v = Voyager(data)

p = v[]
save("iris_voyager.png", p)
save("iris_voyager.svg", p)