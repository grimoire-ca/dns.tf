resource "gandi_domain" "lithobrake_club" {
    lifecycle {
        prevent_destroy = true
    }

    name = "lithobrake.club"

    nameservers = split(",", ns1_zone.primary.dns_servers)

    owner {
        city             = "Toronto"
        country          = "CA"
        data_obfuscated  = true
        email            = "owen@grimoire.ca"
        extra_parameters = {
            "birth_city"       = ""
            "birth_country"    = ""
            "birth_date"       = ""
            "birth_department" = ""
        }
        family_name      = "Jacobson"
        given_name       = "Owen"
        mail_obfuscated  = true
        phone            = "+1.4165542902"
        state            = "CA-ON"
        street_addr      = <<-ADDRESS
            230 King St E
            Unit 308
        ADDRESS
        type             = "person"
        zip              = "M5A 1K5"
    }

    billing {
        type = "person"

        email = "owen@grimoire.ca"
        phone = "+1.4165542902"

        given_name  = "Owen"
        family_name = "Jacobson"
        street_addr = <<-ADDRESS
            230 King St E
            Unit 308
        ADDRESS
        city        = "Toronto"
        state       = "CA-ON"
        country     = "CA"
        zip         = "M5A 1K5"

        extra_parameters = {
            birth_city       = ""
            birth_country    = ""
            birth_date       = ""
            birth_department = ""
        }

        data_obfuscated = true
        mail_obfuscated = true
    }

    admin {
        type = "person"

        email = "owen@grimoire.ca"
        phone = "+1.4165542902"

        given_name  = "Owen"
        family_name = "Jacobson"
        street_addr = <<-ADDRESS
            230 King St E
            Unit 308
        ADDRESS
        city        = "Toronto"
        state       = "CA-ON"
        country     = "CA"
        zip         = "M5A 1K5"

        extra_parameters = {
            birth_city       = ""
            birth_country    = ""
            birth_date       = ""
            birth_department = ""
        }

        data_obfuscated = true
        mail_obfuscated = true
    }

    tech {
        type = "person"

        email = "owen@grimoire.ca"
        phone = "+1.4165542902"

        given_name  = "Owen"
        family_name = "Jacobson"
        street_addr = <<-ADDRESS
            230 King St E
            Unit 308
        ADDRESS
        city        = "Toronto"
        state       = "CA-ON"
        country     = "CA"
        zip         = "M5A 1K5"


        extra_parameters = {
            birth_city       = ""
            birth_country    = ""
            birth_date       = ""
            birth_department = ""
        }

        data_obfuscated = true
        mail_obfuscated = true
    }
}
