mock "tfplan/v2" {
  module {
    source = "../../mocks/plan-empty.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "../../mocks/config-approved.sentinel"
  }
}

test {
  rules = {
    providers_approved = true
    modules_approved   = true
    main               = true
  }
}
