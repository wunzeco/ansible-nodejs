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


## Testing

To run integration tests of this role

```
kitchen test
```


## Dependencies

none
