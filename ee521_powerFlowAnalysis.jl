using CSV
using DelimitedFiles, DataFrames

folderInput = "rawData/"
#inputData = CSV.read(folderInput*"ieee14cdf")

dataInput, header = readdlm(joinpath(folderInput
,"ieee14cdf.txt"), header = true)

headerBusData = ["bus", "busName", "voltageLevel", "loadFlowArea", "lossZone",
"busType", "vFinal","deltaFinal", "P_L", "Q_L", "P_G", "Q_G", "kVBase", "VSet",
"vSet", "Q_Max", "Q_Min", "G", "B", "remoteControlledBusNumber"]

headerBranchData = ["i", "j", "loadFlowArea", "lossZone", "ckt", "type", 
"R", "X", "B", "MVA1", "MVA2", "MVA3", "controlBusNumber", "side", "a", "phi",
"aMin_or_phiMin", "aMax_or_phiMax", "stepSize", "Q_Max", "Q_Min"]

vscodedisplay(dataInput)