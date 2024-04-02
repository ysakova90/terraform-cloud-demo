resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids =  data.terraform_remote_state.vpc.outputs.private_subnets
}


resource "aws_db_instance" "default" {
	identifier = "dbname"
	allocated_storage = 20
	storage_type = "gp2"
	engine = "mysql"
	engine_version = "5.7"
	instance_class = "db.t3.small"
	username = "foo"
	password = "foobarbaz"
	publicly_accessible = true
	db_subnet_group_name = aws_db_subnet_group.default.name
	skip_final_snapshot = true #used to delete the repo in the future without this you cant delete. There are bugs reported 
}