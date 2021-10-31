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
- Run playbooks with `ansible-playbooks <MY_PLAYBOOK>.yml`

### Sequence of code organizations.
1. Individual task files.
2. Node specific config. Sample video [here](https://www.youtube.com/watch?v=EraC1AuWEF8&list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70&index=9)
3. Tags. Sample video [here](https://www.youtube.com/watch?v=gH_A-0zYLyw&list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70&index=10&t=512s)
4. Roles. Sample video [here](https://www.youtube.com/watch?v=tq9sCeQNVYc&list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70&index=14&t=1044s)
5. Host variables and handlers. Sample video [here](https://www.youtube.com/watch?v=shBlQQZLU9M&list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70&index=15&t=895s)
6. Templates. Sample video [here](https://www.youtube.com/watch?v=s8F_YWGHeDM&list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70&index=16)

### More Optimizations:

- [] Role based tasks
- [] Host variables and handlers (notify callbacks)
    - Variables that can be added for each hosts without touching hosts or tasks files
- [] Templates
    - Allows us to have variables that can be assigned to multiple hosts as defaults and have overrides to each host as needed.
    - Formatted as jinga2(.j2) extension.

Detailed intro to ansible can be found in [this](https://www.youtube.com/playlist?list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70) youtube playlist.

Git repo used in the above YT playlist can be found [here](https://github.com/LearnLinuxTV/getting_started_with_ansible)
