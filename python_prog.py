#!/usr/bin/env python
# coding: utf-8

# In[1]:


r=10
pi = 3.14
volume = (4/3)*pi*r*r*r
print (volume)


# In[ ]:


def add(a,b):
    return a+b
def sub(a,b):
    return a-b
def mult(a,b):
    return a*b
def power(a,b):
    return pow(a,b)
def div(a,b):
    return a/b

def cal(d,a,b):
    return d(a,b)

cal(power,5,10)


# In[5]:


def is_triangle(a,b,c):
    if a+b>=c and b+c>=a and a+b>=c:
        return "YES"
    else:
        return "NO"

a = int(input())
b = int(input())
c = int(input())

is_triangle(a,b,c)


# In[1]:



def f(n):
    if n == 1 or n == 2:
        return 1
    return  f(n-1) + f(n-2)
        
n = int(input())
for i in range(1,n+1):
    print (f(i), end=" ")
f(n)


# In[27]:


import math
const = 2*math.sqrt(2)/9801
k = 0
s = 0
var = pow(10,-15)
while 1:
    temp = const*math.factorial(4*k)*(1103 + 26390*k)/(pow(math.factorial(k),4)*pow(396,4*k))
    if temp<var :
        break
    s = s+ temp
    k = k+1

print (1/s)
print(math.pi)


# In[5]:


def my_reverse(s):
    rev_s = ''
    for i in s:
        rev_s = i + rev_s
    print (rev_s) 

s = input()    
my_reverse(s)    


# In[23]:


def find_count(s, index, elem):
    l = len(s)
    k=0
    arr = []
    for i in range(index+1,l):
        if elem == s[i]:
            arr.append(i)
            k = k +1
    print(k,arr)        
s = input()
p = int(input())
elem = input()
find_count(s,p,elem)


# In[38]:


arr = [int(i) for i in input().split()]
s = []
s.append(arr[0])

for j in range(1,len(arr)):
    s.append(s[j-1] + arr[j])
    
print (s)    


# In[51]:


def is_anagram(s1,s2):
    if len(s1) != len(s2):
        return False
    else: 
        arr = []
        for i in range(26):
            arr.append(0)
        for i in s1:
            arr[ord(i)-ord('a')] +=1
        for i in s2:
            arr[ord(i)-ord('a')] -=1
            
        for i in range(26):
            if arr[i] != 0:
                return False
        return True    
s1 = input()
s2 = input()
is_anagram(s1,s2)


# In[57]:


Dic = {}

def frq(s):
    dic = {}
    for i in s:
        dic[i] = dic.get(i,0) +1
        Dic[s] = dic
    print (Dic)

s = input()
frq(s)


# In[56]:


import pickle
Dic = {}

def frq(s):
    dic = {}
    for i in s:
        dic[i] = dic.get(i,0) +1
        Dic[s] = dic
    
    
f = open('hello.txt',"r")
if f.mode == 'r':
    #contents = f.read()
    f1 = f.read()
    f1 = f1.split()
    for i in f1:
        frq(i)
        
    print (Dic)
    
# Store data (serialize)
with open('Dic.pickle', 'wb') as handle:
    pickle.dump(Dic, handle, protocol=pickle.HIGHEST_PROTOCOL)

with open('Dic.pickle', 'rb') as handle:
    b = pickle.load(handle)

print (Dic == b)  


# In[77]:


import random
with open('words.txt') as f:
    lines = f.read()
    lines = lines.split()
    lines = random.sample(lines,200)
    
lines.sort()
lines.sort(key=len,reverse=True)
print(lines)
f.close()
f1 = open("words_200.txt", "w")

for i in lines:
    f1.write(i +'\n')
f1.close()    


# In[80]:


import os

def get_file_list(path):
    folders = []

    # r=root, d=directories, f = files
    for r, d, f in os.walk(path):
        for folder in d:
            folders.append(os.path.join(r, folder))
    for f in folders:
        print(f)
        
path = os.getcwd()
get_file_list(path)


# In[104]:


import sys

def sed(pattern,replace,file1,file2):
    f = open(file1,'r')
    filedata = f.read()
    f.close()

    newdata = filedata.replace(pattern,replace)

    f = open(file2,'w')
    f.write(newdata)
    f.close()

print ("enter pattern string")
s = input()
print ("enter replacement string")
r = input()
print ("enter file name 1")
f1 = input()
print ("enter file name 2")
f2 = input()

sed(s,r,f1,f2)   


# In[ ]:




