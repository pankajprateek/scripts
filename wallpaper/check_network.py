f=open("/tmp/networklist","r")
a=f.readlines()
network=0
for i in range(0,len(a),2):
    tmp=a[i].split(':')
    if tmp[1]==" eth0":
        if tmp[2][2:11] == "BROADCAST":
            network=1
print network
