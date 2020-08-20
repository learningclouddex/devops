Steps:

Spin 3 t2 instances
1.Amazon Linux - Bastion
2.Ubuntu
3.Amazon Linux

Spin in us-east-1, default vpc

Create Security Group
Inbound:
22 all
80 all
within VPC all all

After spinning the instances, log into the bastion host

copy the pem key to /tmp/<keyname>/pem
#chmod 400 <key>.pem

#yum install ansible -y
The above command will fail and it will give the right repository url, just type it.
#yum install git tree -y
#git clone <the repo url>

Goto, Ansible directory
Open the inventory.ini file and change the location of the key file

Also get the private ip of the other two instances.
ubuntu - db(group)
amazon - web(group)

Note:!
Dont change the above order, else playbook will fail!

Test:
Goto browser and type the following,

DB Server,
http://<publicip>:5000/
http://<IP>:5000/how%20are%20you
http://18.207.233.254:5000/read%20from%20database

Webserver:
http://<publicip>/flower.jpg

Cleanup:
Delete all the instances, once done

