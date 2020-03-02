import pandas as pd
import random
def findArrivalTime(customerNumber):
    if customerNumber==1:
        return 0
    else:
        return interArrivalTimes[customerNumber-1]+arrivalTimes[customerNumber-2] #interarriva time of this customer + arrivaltimeofPrevious cusotmer

def findQueueWaitTime(customerNumber):
    if customerNumber==1:
        return 0
    else:
        if serviceEnd[customerNumber-2] > arrivalTimes[customerNumber-1]:
            return serviceEnd[customerNumber-2] - arrivalTimes[customerNumber-1]
        else:
            return 0

def findServiceBeginTime(customerNumber):
    if(customerNumber==1):
        return 0
    else:
        return arrivalTimes[customerNumber-1] + queueWaitTime[customerNumber-1]

def findServiceEndTime(customerNumber):
    return serviceBegin[customerNumber-1]+serviceTimes[customerNumber-1]

def findTimeCustomerSpendsInSystem(customerNumber):
    return serviceTimes[customerNumber-1]+queueWaitTime[customerNumber-1]

def findIdleTimeOfServer(customerNumber):
    if arrivalTimes[customerNumber-1] > serviceEnd[customerNumber-2]:
        return arrivalTimes[customerNumber-1] - serviceEnd[customerNumber-2]
    else:
        return 0

# interArrivalTimes = [0,8,6,1,8,3,8,7,2,3]
# serviceTimes = [4,1,4,3,2,4,5,4,5,3]
interArrivalTimes =[]
serviceTimes = []
arrivalTimes = []
queueWaitTime = []
serviceBegin =[]
serviceEnd = []
timeCustomerSpendInSystem = []
serverIdleTime = []

correctInput = False
while(not correctInput):
    try:
        numberOfCustomers = int(input("Enter the number of customers to simulate: "))
        correctInput = True
    except ValueError:
        print("You need to type a whole number!.")

for x in range(numberOfCustomers):
    if(x==0):
        interArrivalTimes.append(0)
    else:
        interArrivalTimes.append(random.randrange(1,9,1))
    serviceTimes.append(random.randrange(1,7,1))

for x in range(1, numberOfCustomers+1):
    arrivalTimes.append(findArrivalTime(x))
    queueWaitTime.append(findQueueWaitTime(x))
    serviceBegin.append(findServiceBeginTime(x))
    serviceEnd.append(findServiceEndTime(x))
    timeCustomerSpendInSystem.append(findTimeCustomerSpendsInSystem(x))
    serverIdleTime.append(findIdleTimeOfServer(x))

df=pd.DataFrame({"Inter Arrival Time":interArrivalTimes, 
"Service Time":serviceTimes,
"Arrival Time":arrivalTimes,
"Time Customer Waits In Queue":queueWaitTime,
"Service Beign Time":serviceBegin,
"Service End Time":serviceEnd,
"Time Customer Spends In System": timeCustomerSpendInSystem,
"Idle Time Of Server": serverIdleTime})

print(df)
df.to_excel("output.xlsx",
             sheet_name='Sheet_name_1') 




        