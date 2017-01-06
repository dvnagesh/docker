yum update -y 
yum install -y unzip csh
mkdir /vdb
unzip /vdbench50403.zip -d /vdb

cat <<END > /vdb/venkat.txt
fsd=fsd1,anchor=/data,depth=1,width=1,files=1000,size=128k

fwd=default,xfersize=4k,fileio=random,fileselect=random,threads=8,
stopafter=100
fwd=fwd1,fsd=fsd1,operation=read
fwd=fwd2,fsd=fsd1,operation=write

rd=rd1,fwd=fwd*,fwdrate=max,format=yes,elapsed=120,interval=1
END
