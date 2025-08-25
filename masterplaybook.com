---
- name: First play for conditional
  import_playbook: loops_playbook.yml

- name: Second play for block
  import_playbook: blockplaybook.yml
