SheffieldLdapLookup::LdapFinder.ldap_config = YAML.load_file("#{Rails.root}/config/ldap.yml")[Rails.env]
