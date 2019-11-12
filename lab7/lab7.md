===================================problem 5
import math

def cal(k):
    x = (math.factorial(4*k))*(1103 + 26390*k)
    y = ((math.factorial(k))**4)*(369**(4*k))
    return float(x/y)

term = cal(0)*((2*math.sqrt(2))/9801)
k=1
sum=0
while(term> (1e-15)):
    sum += term
    term = cal(k)*((2*math.sqrt(2))/9801)
    k +=1

print(sum)
t = 1/(math.pi)
print(t)
=================================problem 6
def rev(x):
    l = len(x)
    t = ""
    for i in range(l):
        t += x[5-i-1]
    return t
print(rev("mohan"))
==================================problem 7
def findocc(a,i,c):
    x = len(a)
    li = []
    count=0
    for t in range(i,x):
        if(a[t] == c):
            li.append(t)
            count+=1
    return li,count
x,y = findocc("mohanmohan",1,'a')
print(x)
print(y)
=================================problem 8
def cum(x):
    l = len(x)
    for i in range(1,l):
        x[i] += x[i-1]
    return x
print(cum([1,2,3,4,5,6,7,8,9]))
=================================problem 9
def is_anagram(a,b):
    dict = {}
    for i in a:
        if(i in dict.keys()):
            dict[i]+=1
        else:
            dict[i] = 1
    for i in b:
        if(i in dict.keys()):
            if(dict[i]>0):
                dict[i]-=1
            else:
                return False
        else:
            return False
    return True
print(is_anagram("mohan","nuhom"))
====================================problem 10
def getdict(a):
    dict = {a:{}}
    for i in a:
        if(i in dict[a].keys()):
            dict[a][i]+=1
        else:
            dict[a][i] = 1
    return dict
print(getdict("micicippii"))
======================================problem 11


