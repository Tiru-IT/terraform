variable "ec2_tags" {
    default = ["mongodb", "redis"] #this is list for 
    
    # default = {
    #    mongodb = "t3.micro"
    #   redis = "t3.micro"
    #    mysql = "t3.small"
    #} this is map
    
    # default = {
    #     mongodb = {
    #         instance_type = "t3.micro"
    #         ami = "ami-id"
    #     }
    #     redis = "t3.micro"
    #     mysql = "t3.small"
    # }
}

variable "zone_id" {
    default = "Z0434065211S39GVO4UF0"
}

variable "domain_name" {
    default = "tirusatrapu.fun"
}