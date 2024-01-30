module "rgm" {
  source  = "../1RGS"
  rgnames = var.rgnames

}

module "vnetm" {
  depends_on = [module.rgm]
  source     = "../2VNETS"
  vnets      = var.vnets

}
module "subnetm" {
  depends_on = [module.vnetm]
  source     = "../3SUBNETS"
  subnets    = var.subnets
}

module "pipm" {
  depends_on = [module.rgm]
  source     = "../4PUBLIC IPS"
  pips       = var.pips

}

module "absm" {
  depends_on = [module.rgm, module.vnetm, module.subnetm, module.pipm]
  source     = "../12ABSUBNET"
  absnames   = var.absnames

}

module "nicm" {
  depends_on = [module.rgm,module.vnetm,module.subnetm,module.pipm]
  source     = "../5NIC"
  nics       = var.nics

}
module "nsgm" {
  depends_on    = [module.rgm]
  source        = "../6NSG"
  nsgs          = var.nsgs
  security_rule = var.security_rule
}


module "nsgassm" {
  depends_on = [module.rgm, module.vnetm, module.subnetm, module.nicm]
  source     = "../7NSGASS"
  nsgass     = var.nsgass
}

module "sqlm" {
  depends_on = [module.rgm]
  source     = "../8SQLSERVERS"
  sqlservers = var.sqlservers
}

module "sqldbm" {
  depends_on = [module.rgm, module.sqlm]
  source     = "../9SQLDBS"
  sqldbs     = var.sqldbs
}

module "vms" {
  depends_on = [module.rgm, module.nicm]
  source     = "../10VM"
  vms        = var.vms

}
module "kvm" {
  depends_on = [module.rgm, ]
  source     = "../13KEYVAULTS"
  keyvaults  = var.keyvaults

}
module "vpm" {
  source = "../14VNETPEERING"
  
  
}


