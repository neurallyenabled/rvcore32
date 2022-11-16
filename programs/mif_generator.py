import subprocess

inpath = input("Enter relative path to file: ")
path = inpath.split('/')
abspath = "/home/mj/Documents/uob/itce497/rvcore32/programs/" + path[1] + "/"
subprocess.call(['sh', '/home/mj/bin/exctoolchain.sh', abspath+path[2]])
depth = 16384
f = open("mem.mif", "w")
f.write("DEPTH = "+ str(depth) +";     -- The size of memory in words\n")
f.write("WIDTH = 8;                    -- The size of data in bits\n")
f.write("ADDRESS_RADIX = DEC;          -- The radix for address values\n")
f.write("DATA_RADIX = HEX;             -- The radix for data values\n")
f.write("CONTENT                       -- start of (address : data pairs)\n")
f.write("BEGIN\n")

p = open(abspath+"prog.lst","r")
count = 0
for i in range(0,8):
    line = p.readline()

while line != "":
    print(line)
    inst = line.split()
    if len(inst) < 2:
        line = p.readline()
        line = p.readline()
        inst = line.split()
    inst = inst[1]
    wline = str(count) + ":" + inst[6:] + ';\n'
    f.write(wline)
    wline = str(count+1) + ":" + inst[4:6] + ';\n'
    f.write(wline)
    wline = str(count+2) + ":" + inst[2:4] + ';\n'
    f.write(wline)
    wline = str(count+3) + ":" + inst[0:2] + ';\n'
    f.write(wline)
    count = count + 4
    line = p.readline()

while count != depth:
    wline = str(count) + ":" + "00" + ';\n'
    f.write(wline)
    count = count + 1
f.write("END;")
p.close()
f.close()
subprocess.call(['sh', './questa.sh'])
#subprocess.call(['sh', 'cd','/home/mj/Documents/uob/itce497/rvcore32/core/vsim'])
#subprocess.call(['sh', '/home/mj/intelFPGA_lite/21.1/questa_fse/bin/vsim ','-voptargs="+acc"','-do "do cc.tcl"'])

