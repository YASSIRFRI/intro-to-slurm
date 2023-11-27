import sys


readfile=open("./config.txt","r")

content=readfile.readlines()
content=[line.split("\t") for line in content]

writeFile=open("./output.out","a")
print(sys.argv[1])
line=content[int(sys.argv[1])]

sentence="This is array Task "+line[0]+" the sample name is "+line[1]+" and sex is "+line[2]+"\n"

writeFile.write(sentence)

