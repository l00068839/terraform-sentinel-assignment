mock "tfplan/v2" {
  module {
    source = "../../mocks/plan-empty.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "../../mocks/config-unapproved-provider.sentinel"
  }
}

test {
  rules = {
    providers_approved = false
    main               = false
  }
}
