Steps:

1.Spin 3 t2 instances

    1.Amazon Linux - Bastion

    2.Ubuntu

    3.Amazon Linux

2.Spin in us-east-1, default vpc

3.Create Security Group

  Inbound:

      22 all

      80 all

      all all within VPC 

4.After spinning the instances, log into the bastion host

    copy the pem key to /tmp/<keyname>.pem
    
    #chmod 400 <key>.pem

    #sudo yum install ansible -y

5.The above command will fail and it will give the right repository url, just type it.

    #sudo yum install git tree -y

    #git clone https://github.com/learningclouddex/devops.git

6.Goto, Ansible directory, Open the inventory.ini file and change the location of the key file

7.Also get the private ip of the other two instances.
       
        ubuntu - db(group)
        
        amazon - web(group)
        
8. Run the playbook,

        # cd /home/ec2-user/devops/Ansible
        #ansible-playbook -i inventory.ini site.yml 

Note:!

Dont change the above order, else playbook will fail!

9.Test:

Goto browser and type the following,

DB Server,

      http://<publicip>:5000/
      
      http://<IP>:5000/how%20are%20you
      
      http://18.207.233.254:5000/read%20from%20database

Webserver:

     http://<publicip>/flower.jpg

9.Cleanup:

Delete all the instances, once done

