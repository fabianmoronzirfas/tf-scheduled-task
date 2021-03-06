variable "profile" {
  description = "The profile to work with. See your ~/.aws/credentials"
  default     = "default"
}

variable "region" {
  description = "The region to work in."
  default     = "eu-central-1"
}

variable "preffix" {
  description = "A name prefix added to all resources created"
  default     = "tf"
}

variable "name" {
  description = "The name of resources created"
  default     = "radolan-recent"
}

variable "env" {
  description = "Just another suffix so you can have environments"
  default     = "prod"
}
variable "availability_zones" {
  description = "I Think there are only 3 in europe"
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}
variable "az_count" {
  description = "Number of Availability Zones (AZs) to cover in a given region"
  default     = "3"
}
variable "vpc_id" {
  description = "The ID of your existing VPC where all the groups will be created in"
}

variable "image" {
  description = "the image to use for your task"
  default     = "technologiestiftung/flusshygiene-radolan-recent:latest"
}

# variable "cluster_arn" {
#   description = "If you have a clsuter. You could use the cluster arn"
# }

variable "schedule_expression" {
  description = "The schedule to run in. Could also be cron(*/5 * * * *) see https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html"
  default     = "rate(24 hours)"
}



# ┌─┐┌┐┌┬  ┬
# ├┤ │││└┐┌┘
# └─┘┘└┘ └┘
# ┬  ┬┌─┐┬─┐┬┌─┐┌┐ ┬  ┌─┐┌─┐
# └┐┌┘├─┤├┬┘│├─┤├┴┐│  ├┤ └─┐
#  └┘ ┴ ┴┴└─┴┴ ┴└─┘┴─┘└─┘└─┘
# Mailgun
variable "mailgun_domain" {
  type = "string"

}

variable "mailgun_from" {
  type = "string"
}

variable "mailgun_to" {
  type = "string"
}

variable "mailgun_api_key" {
  type = "string"
}

variable "aws_access_key_id" {
  description = "The aws access key for your profile. Todo? Make the task use task_role_arn instead of passing the keys in env"
}

variable "aws_secret_access_key" {
  description = "The aws access key for your profile. Todo? Make the task use task_role_arn instead of passing the keys in env"

}

variable "aws_bucket_name" {
  description = "The bucket to store the radolan sf data in"
}

variable "ftp_host" {
  description = "the ftp host of the DWD"
}

variable "ftp_port" {
  description = "the FTP port of the dwd"
}

variable "ftp_radolan_path" {
  description = "the path on the DWD FTP where the SF data is located"
}

