terraform {
  required_version = "0.15.4"
  experiments      = [module_variable_optional_attrs]
  required_providers {
    google      = "3.55.0"
    google-beta = "3.55.0"
    kubernetes  = "1.13.3"
    null        = "3.0.0"
    random      = "3.0.1"
    external    = "2.0.0"
  }
}
