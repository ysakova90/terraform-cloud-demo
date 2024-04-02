output private_subnets {
    description = "Prints out private_subnets"
    value = module.vpc.private_subnets
}
output public_subnets {
    description = "Prints out public_subnets"
    value = module.vpc.public_subnets
}