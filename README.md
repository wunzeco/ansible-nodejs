Nodejs
=============

This role installs nodejs (v4.x and above).


## Example

```
- hosts: myhost

  vars:
    nodejs_version: 6.x

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
