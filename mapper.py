"""mapper.py"""

import sys
for line in sys.stdin:
    line = line.strip()
    words = line.split()
    for word in words:
        word = word.lower()
        for x in [',','.','!','?',':',';','"','\'','#','$']:
            word = word.replace(x,'')
        print('%s\t%s' % (word, 1))