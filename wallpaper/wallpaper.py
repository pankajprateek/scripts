f=open("/home/pankaj/scripts/wallpaper/bing","r")
a=f.readlines()
path="www.bing.com"
p=[]
for i in range(0,len(a)):
    for j in range(0,len(a[i])):
        if a[i][j:j+10] == "g_img={url":
            k=j+12
            while a[i][k]!="'":
                p.append(a[i][k])
                k+=1

x = "".join(p)
path=path+x
print path
