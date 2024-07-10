import os
import subprocess as sp

i1 = input('dir   ')
i2 = len(os.listdir('todo/{}'.format(i1)))+1
open('todo/{}/{}.md'.format(i1,i2),'x')
print('created todo #{}'.format(i2))
f = input('vim into the todo?   ')

if (f!='n'):
	sp.call(['vim','todo/{}/{}.md'.format(i1,i2)])
