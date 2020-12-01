variable "instance_type" {
type = string
default = "t2.micro"
}
variable "providerregion"  {
  type = map
  default = {
    ohio = "us-east-2"
    northernvirginia = "us-east-1"
}
}
