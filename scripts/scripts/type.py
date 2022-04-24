from datetime import datetime as dt
import requests
import random
from time import sleep

class Type:
	def __init__(self):
		start = dt.now()
		total_entries = ''
		inaccurate_entries = ''

		for i in range(len(wL)):
			word = wL[i]
			w = input("[{}] >> ".format(word))
			total_entries += w
			w_diff = len(w) - len(word)
			k = 1

			if(w_diff>0):
				for i in range(w_diff):
					inaccurate_entries += w[-k]
					k+=1
			if(w_diff==0):
				for i in range(len(word)):
					l1 = word[i]
					l2 = w[i]
					if(l1!=l2):
						inaccurate_entries += l2
			if(w_diff<0):
				for i in range(abs(w_diff)):
					inaccurate_entries += word[-k]
					k+=1	

		keystrokes = len(total_entries)
		diff = dt.now() - start
		cps = keystrokes / diff.total_seconds()
		percentage_accuracy = 100*((keystrokes-len(inaccurate_entries)) / keystrokes)
		wpm = cps * (60/5) * (percentage_accuracy/100)
		print("\nwpm        ",wpm,"\naccuracy   ",percentage_accuracy,"%")

url = "https://www.mit.edu/~ecprice/wordlist.10000"
r = requests.get(url)
wl = r.content.splitlines()
len1 = input("how many words would you like:   ")
wL = []
k = 3

for i in range(int(len1)):
	byts = wl[random.randint(0,9999)]
	wL.append(byts.decode("UTF-8"))

print(wL)
print("\n")
print("Get Ready")

while(k!=0):
	print(k,"...")
	k-=1
	sleep(1)

print("Go!")
print("\n")

Type()