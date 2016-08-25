# ForemanApiV3

Plugin for Foreman API v3, which is based on v2 controllers but uses format according to the [jsonapi.org  specification](http://www.jsonapi.org).

The v3 controllers inherit from v2 controllers. For example:
```
module Api
  module V3
    class DomainsController < V2::DomainsController

      include Api::Version3

      def index
        super
        render json: @domains,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: DomainSerializer
      end

```

## Installation

See [How_to_Install_a_Plugin](http://projects.theforeman.org/projects/foreman/wiki/How_to_Install_a_Plugin)
for how to install Foreman plugins

```ruby
gem 'foreman_api_v3', :git => 'https://github.com/isratrade/foreman_api_v3.git
```

## Usage

```
GET http://example.com/api/v3/hosts
```

## Format

The Foreman API v3 follows the [jsonapi.org  specification](http://www.jsonapi.org):

#### 1) Example response for collection

**GET http://example.com/api/v3/domains**
```
{
    "data": [
        {
            "id": "2",
            "type": "domains",
            "attributes": {
                "name": "example.com",
                "fullname": "",
                "dns_id": null,
                "created_at": "2016-04-20T11:16:02.447Z",
                "updated_at": "2016-04-20T11:16:02.447Z"
            },
            "relationships": {
                "parameters": {
                    "data": []
                },
                "subnets": {
                    "data": [
                        {
                            "id": "1",
                            "type": "subnets"
                        }
                    ]
                },
                "interfaces": {
                    "data": []
                },
                "locations": {
                    "data": [
                        {
                            "id": "4",
                            "type": "locations"
                        }
                    ]
                },
                "organizations": {
                    "data": [
                        {
                            "id": "1",
                            "type": "organizations"
                        },
                        {
                            "id": "3",
                            "type": "organizations"
                        }
                    ]
                }
            }
        },
    ]
    "links": {}
}
```

#### 2) Example response for Side-load Resources by passing ?include parameter

**GET /api/v2/domains?include=subnets**
```
{
    "data": [
        {
            "id": "2",
            "type": "domains",
            "attributes": {
                "name": "example.com",
                "fullname": "",
                "dns_id": null,
                "created_at": "2016-04-20T11:16:02.447Z",
                "updated_at": "2016-04-20T11:16:02.447Z"
            },
            "relationships": {
                "parameters": {
                    "data": []
                },
                "subnets": {
                    "data": [
                        {
                            "id": "1",
                            "type": "subnets"
                        }
                    ]
                },
                "interfaces": {
                    "data": []
                },
                "locations": {
                    "data": [
                        {
                            "id": "4",
                            "type": "locations"
                        }
                    ]
                },
                "organizations": {
                    "data": [
                        {
                            "id": "1",
                            "type": "organizations"
                        },
                        {
                            "id": "3",
                            "type": "organizations"
                        }
                    ]
                }
            }
        }
    ],
    "included": [
        {
            "id": "1",
            "type": "subnets",
            "attributes": {
                "name": "subnet1",
                "network": "1.2.3.4",
                "network_type": "IPv4",
                "network_address": "1.2.3.4/24",
                "cidr": 24,
                "mask": "255.255.255.0",
                "priority": null,
                "vlanid": "",
                "gateway": "10.0.0.138",
                "dns_primary": "",
                "dns_secondary": "",
                "from": "",
                "to": "",
                "ipam": "None",
                "boot_mode": "DHCP",
                "created_at": "2016-08-11T13:02:16.872Z",
                "updated_at": "2016-08-11T13:02:16.872Z"
            },
            "relationships": {
                "dhcp": {
                    "data": null
                },
                "tftp": {
                    "data": null
                },
                "dns": {
                    "data": null
                },
                "domains": {
                    "data": [
                        {
                            "id": "2",
                            "type": "domains"
                        },
                        {
                            "id": "1",
                            "type": "domains"
                        }
                    ]
                },
                "interfaces": {
                    "data": []
                },
                "parameters": {
                    "data": []
                },
                "locations": {
                    "data": [
                        {
                            "id": "4",
                            "type": "locations"
                        }
                    ]
                },
                "organizations": {
                    "data": [
                        {
                            "id": "1",
                            "type": "organizations"
                        }
                    ]
                }
            }
        }
    ],
    "links": {}
}
```


#### 3) Example response for [Sparse Fieldsets](http://jsonapi.org/format/#fetching-sparse-fieldsets) or Custom Response

**GET api/v3/domains?include=subnets&fields[domains]=name,fullname&fields[subnets]=name,network,network_address**

```
{
    "data": [
        {
            "id": "2",
            "type": "domains",
            "attributes": {
                "name": "example.com",
                "fullname": ""
            }
        },
        {
            "id": "1",
            "type": "domains",
            "attributes": {
                "name": "redhat.com",
                "fullname": "redhat domain description"
            }
        }
    ],
    "included": [
        {
            "id": "1",
            "type": "subnets",
            "attributes": {
                "name": "subnet1",
                "network": "1.2.3.4",
                "network_address": "1.2.3.4/24"
            }
        }
    ],
    "links": {}
}
```

#### 4) Error Responses

TBD

## Contributing

Fork and send a Pull Request. Thanks!

## Copyright

Copyright (c) *year* *your name*

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

