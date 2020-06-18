#!/usr/bin/python

import sys
import os

def substline(line):
    out = "";
    while True:
        pos = line.find("${")
        if pos < 0:
            break
        out = out + line[0:pos];
        line = line[pos+2:]
        pos = line.find("}")
        if pos < 0:
            break
        key = line[:pos]
        line = line[pos+1:]
        default = ""
        t = ""
        pos = key.find(":")
        if pos >= 0:
            t = key[:pos]
            key = key[pos+1:]
        pos = key.find(":")
        if pos >= 0:
            default = key[pos+1:]
            key = key[:pos]
        #print("Type: " + t + " key: " + key + " Def: " + default)
        if t == "env":
            out = out + os.getenv(key, default)
        if t == "file":
            if os.path.exists(key):
                with open(key) as f: s = f.read()
                out = out + s
            else:
                out = out + default
    out = out + line
    return out

if len(sys.argv) > 1:
    file = sys.argv[1]
    with open(file) as f: content = f.read()
    f = open(file, "w")
    for line in content.splitlines():
        out = substline(line)
        f.write(out)
    f.close()
else:
    for line in sys.stdin:
        out = substline(line)
        sys.stdout.write(out);

