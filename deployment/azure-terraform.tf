{
  "provider": [
    {
      "azurerm": [
        {
          "skip_provider_registration": true,
          "version": "=1.28.0"
        }
      ]
    }
  ],
  "resource": [
    {
      "azurerm_storage_account": [
        {
          "prbtesla": [
            {
              "account_replication_type": "GRS",
              "account_tier": "Standard",
              "enable_https_traffic_only": false,
              "location": "westus",
              "name": "prbtesla",
              "resource_group_name": "REDLOCK-ENGG-RESEARCH",
              "tags": [
                {
                  "environment": "DevTesting"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "azurerm_network_security_rule": [
        {
          "prb-ssh": [
            {
              "access": "Allow",
              "destination_address_prefix": "*",
              "destination_port_range": "22",
              "direction": "Inbound",
              "name": "prb-ssh",
              "network_security_group_name": "prb-nsg-tft",
              "priority": 100,
              "protocol": "Tcp",
              "resource_group_name": "REDLOCK-ENGG-RESEARCH",
              "source_address_prefix": "*",
              "source_port_range": "*"
            }
          ]
        }
      ]
    }
  ]
}
