clc

s = [1 1 1 2 2 3 3 4 5 6 7]
t = [2 3 4 3 5 6 7 7 8 8 8]


tc = [13 5 7 2 10 20 4 5 5 12 18]
tm = [14 10 11 2 10 21 14 18 8 12 20]
tp = [15 15 19 2 10 22 16 23 11 12 30]
to = [14 10 11 2 10 21 14 18 8 12 20]

timeExpected = 48 %jakie bedzie prawdopodobienstwo ze sie uda zrobic to w tym czasie



[graph graphResult criticalNodes overallTime] = CPM(s, t,tc, tm, tp,to)
variation = PERT(s,t,tc,tp, criticalNodes)
standardTime = calculateStandardTime(timeExpected, overallTime, variation)
probabilityOfSuccess = calculateNormalDistribuition(standardTime)



