# Commandline



## Manage User

* Manage user account must be in ***root*** user.
* noobzvpns service must be running/started.

1. **Add User** : Add new user account.
```bash
# add user + password(required)
noobzvpns add USERNAME -p PASSWORD
# add user + password(required) + expired in 30 days
noobzvpns add USERNAME -p PASSWORD -e 30
# add user + password(required) + expired in 30 days + bandwidth 10 GB
noobzvpns add USERNAME -p PASSWORD -e 30 -b 10
# add user + password(required) + expired in 30 days + bandwidth 10 GB + device limit 5 devices
noobzvpns add USERNAME -p PASSWORD -e 30 -b 10 -d 5
```

2. **Edit User** : Edit existing user account.
```bash
# edit password
noobzvpns edit USERNAME -p PASSWORD
# edit password + expired in 30 days
noobzvpns edit USERNAME -p PASSWORD -e 30
# edit password + expired in 30 days + bandwidth 10 GB
noobzvpns edit USERNAME -p PASSWORD -e 30 -b 10
# edit password + expired in 30 days + bandwidth 10 GB + device limit 5 devices
noobzvpns edit USERNAME -p PASSWORD -e 30 -b 10 -d 5
```

3. **Rename User** : Change username of existing user account.
```bash
noobzvpns rename USERNAME NEW_USERNAME
```

4. **Block User** : Block existing user accounts.
```bash
# single user
noobzvpns block USERNAME
# multiple users
noobzvpns block USERNAME1 USERNAME2 USERNAME3 ...
```

5. **Unblock User** : Unblock existing user accounts.
```bash
# single user
noobzvpns unblock USERNAME
# multiple users
noobzvpns unblock USERNAME1 USERNAME2 USERNAME3 ...
```

6. **Renew User** : Renew existing user accounts from expiration.
```bash
# single user
noobzvpns renew USERNAME
# multiple users
noobzvpns renew USERNAME1 USERNAME2 USERNAME3 ...
```

7. **Reset User** : Reset statistic (bandwidth usage & active devices) of existing user accounts.
```bash
# single user
noobzvpns reset USERNAME
# multiple users
noobzvpns reset USERNAME1 USERNAME2 USERNAME3 ...
```

8. **Remove User** : Remove existing user accounts.
```bash
# single user
noobzvpns remove USERNAME
# multiple users
noobzvpns remove USERNAME1 USERNAME2 USERNAME3 ...
```

9. **Print User** : Print existing user accounts.
```bash
# single user
noobzvpns print USERNAME
# multiple users
noobzvpns print USERNAME1 USERNAME2 USERNAME3 ...
```

10. **Print All** : Print all existing user accounts.
```bash
noobzvpns print-all
```

11. **Opts** : we mark this as ***dangerous*** operation for not accidently used.
```bash
# renew all user account from expiration days
noobzvpns opts --renew-all
# reset all user account statistic (bandwidth usage + active devices)
noobzvpns opts --reset-all
# remove/delete all existing user account
noobzvpns opts --delete-all
```

## Developer / Test
* can help for direct test/logging noobzvpns service work or not after you change some parameter or configuartion before running it in background a.k.a. start service in current shell (foreground).
```bash
# -d is debug mode
noobzvpns -d start-server
```

## JSON-API
* the command-line support ***--json/-j*** for give json api output to see the result after accessing command-line.
* the command-line result just give error code (failure) after executed when operation are not permitted/failed by noobzvpns service.
```bash
noobzvpns -j [FOLLOWED_COMMAND_ABOVE]
```
