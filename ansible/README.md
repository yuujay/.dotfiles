- `inventory` - File that has list of all IPs.
- To test that ansible works connecting to all hosts in inventory use
```bash
ansible all --key-file ~/.ssh/ansible -i inventory -m ping
```

This should return response with `pong`

- `ansible.cfg` - Set of instructions that is run by default when ansible is run.

Now we should be able to run the above command with

```bash
ansible all -m ping

# List all hosts
ansible all --list-host

# Get meta info from hosts
ansible all -m gather_facts

# Running with elevated permissions
ansible all -m apt -m update_cache=true --become --ask-become-pass
```

## Playbooks
