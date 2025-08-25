---
- name: first play to create a user
  hosts: all
  vars_files:
    - users.yaml
  tasks:
    - name: creating user {{ user1 }} and {{ user2 }} and {{ user3 }}
      user:
        name: "{{ user1 }}"
        state: absent
    - user:
        name: "{{ user2 }}"
        state: absent
    - user: 
        name: "{{ user3 }}"
        state: absent
