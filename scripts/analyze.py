import numpy
import sys

def parse_bw(p):
     r = []
     for i in p:
         v,u = i.split()
         v = float(v.replace(',',''))
         if u == 'KB/sec':
             v /= 1024
         if u == 'bytes/sec':
             v/= (1024 * 1024)
         r.append(v)
     return r


def parse_latency(p):
    r = []
    for i in p:
        v,u = i.split()
        v = float(v)
        if u == 'us':
             v /= 1000
        if u == 'sec':
            v *= 1000
        r.append(v)
    return r

def an(k):
    print "Mean:", numpy.mean(k)
    print "Median:", numpy.median(k)
    print "Std:", numpy.std(k)

if __name__ == "__main__":
    typ = sys.argv[1]
    _file = sys.argv[2]
    parse_f = {
        'lat': parse_latency,
        'bw': parse_bw
    }
    an(parse_f[typ](open(_file).readlines()))