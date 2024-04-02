output private_subnets {
    descripton = "Prints out private_subnets"
    value = module.vpc.private_subnets
}
output public_subnets {
    descripton = "Prints out public_subnets"
    value = module.vpc.public_subnets
}