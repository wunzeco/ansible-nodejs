Nodejs
=============

This role installs nodejs (v6.x and above) & yarn package manager.


## Example

```
- hosts: myhost

  vars:
    nodejs_major_version: 6

  roles:
    - wunzeco.nodejs
```


## Testing & Set Up


To run integration tests of this role

Please read this Confluence page: https://o2channels.atlassian.net/wiki/spaces/PRI/pages/706478255/How-To+Set+Up+and+run+Test+Kitchen

```
kitchen test
```