import sys

if len(sys.argv) < 1:
    print("Usage : python header_to_dict.py header_file")
    sys.exit()

header = open(sys.argv[1], 'r')
dict = {}

for line in header:
	line = line.split(': ')
	dict[line[0]] = line[1].strip()

print(dict)