variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDhi6PtNOkMDGZfTpsQYKW+zLtQv+TDLr7aqfVeL+oU7ujv+EAx7haHvFBhp9widzPH3Ec3kjeTpPKyo/VcMgGDn/IZZk41gxI3X530CRLP2IOL7UgWunaXdxOuRpZ/P6UtRTIHp1ZpDkehNHk6MXWlpwqlXw+2JcnS+TinHyEPb7HhJuMFLfud5FBG1ZfpcEiebQZVXJbwEdhv5B7t3eQOivFrbMAK0LLkoJBk4tWrHkz0eXRwME6MQVZkbviF6pGmWEOtszWllVA/jUD4I/KFTkA1Zhc8tQ6RKHwT8W9DxZutkE0EnZD36HNXWzzYjyO5prjHuvzw1s5lhjxUn2J8A6GvwoRjVQAukLHQDnTNVzz6Ag6cryvTI2BjHxDy+djHZFHJhcXsB0lb03e0hwE628LAaQFM5Kvf6riylFD25BfBJ8mHukgaLFN5CSAb6g0Cu0Hls0Zw236dAlZGhS7vS+wcvWGmP4uz3VgPgLyOzRtW0tw7ZzStxXizpLZJma9SCc91mXjmnxKBbCkVTQkb2Iy3ulL10HlYLWGal4M8LwcYUYTLaTmIFf4jn8aszQ0lXD4F2nBHU04fNL7Rk8ijJjBW4goRSA/+E8z5xqijRdXg/PZb9G+Ub4nGvvPe7XAwnYjnLeDBdeGZfANhsenb7DlNF6jzwRwaJFCu/E31VQ== omegabk@MacBook-Pro-de-omega.local"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default = "terraform"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-2"
}

variable "vpc_id" {
    default = "vpc-04a5db13fbb61a210"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  default = {
    us-east-2 = "ami-000d51f3021335149"
  }
}