+ <b>Author: Moole Muralidhara Reddy</b></br>
+ <b>Email:</b> telugudevopsguru@gmail.com</br>
+ <b>Website:</b> https://www.telugudevopsguru.com/</br>
+ <b>Mobile:</b>+91 7893121036</br>
+ <b>Description:</b>Creation AWS VPC through AWS Console.</br>

# Setting up Customized VPC.
![Lab - Setting up Customized VPC in telugu - Moole Muralidhara Reddy - Telugu Devops Guru](https://github.com/telugudevopsguru/terraform/blob/ec1e15c1c63e87cf5bf3c19c53076d7c0e0c4ffc/images/Creation%20of%20AWS%20VPC%20through%20AWS%20Console%20in%20Terraform%20-%20Terraform%20-%20Moole%20Muralidhara%20Reddy.png)

## Step 1: Create the AWS VPC
```xml
Name: Murali-VPC in US East (N. Virginia) us-east-1
CIDR : 10.100.0.0/16
```
## Step 2: Create a 2 public subnets with
```xml
CIDR :10.100.8.0/21
Name: murali-public-subnet-1a

CIDR :10.100.16.0/21
Name: murali-public-subnet-1b

```
## Step 3: Create a 2 private subnets with
```xml
CIDR :10.100.80.0/21
Name: murali-private-subnet-1a

CIDR :10.100.88.0/21
Name: murali-private-subnet-1b

```

## Step 4: Create an internet gateway and attach to Murali-VPC
```xml
Name: Murali-VPC-IGW
```
## Step 5: Create a route table and name it Murali-VPC-Public-RouteTable and attach the public subnets to this RouteTable.
```xml
Name: Murali-VPC-Public-RouteTable
```

## Step 6: Create a route table and name it Murali-VPC-Private-RouteTable and attach the private subnets to this RouteTable.

```xml
Name: Murali-VPC-Private-RouteTable
```

## Step 7: Add the Internet Gateway route to the Public RouteTable.

```xml
Route Entry

Destination : 0.0.0.0/0
Target : Internet Gateway ID
```

## Step 8: Launch the Linux EC2 instance both in the Public and Private Subnet.

#### Congratulations! You have successfully set up the AWS VPC.
