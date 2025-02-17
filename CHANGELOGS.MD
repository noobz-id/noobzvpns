# CHANGELOGS
This page is changelogs info. remember all major protocol version is not compatible for each other (ex: x.x.1a vs x.x.1b are not compatible each other).

### Version 3.3.1b
* Fixed:
    * typo in command-line message.
    * fix initial timeout when try parsing request from client.
    * initial vec data now use raw_vec, make it robust and reduce memory allocation time.
* Changed:
    * **config.toml** now support specific localhost address ipv4/ipv6 or both.
        ```bash
        # from u16 array
        [tcp_plain]
        listen_ports = [80]
        [tcp_ssl]
        listen_ports = [443]
        # into string array (see config.toml for explain more)
        [tcp_plain]
        local_host = ["80"]
        [tcp_ssl]
        local_host = ["443"]
        ```
    * user database version are changed (to: 331) because we change account issued date from UTC time to Local time, its required to migrate user databaseyour self. sorry for doing this.


### Version 3.2.1b
* Minor release
* New Features:
    * Add Up & Down bytes usage in statistic
    * new enforce ip_version in config
* Changed:
    * move to ``reset`` command to action ``renew`` for issued date (expired day) only.
    * database version changed, you need migrate all old database yourself.


### Version 3.1.1b
* Migrate from C/C++ codebase to Rust for memory safety and fast development cycles.
* New Protocols 1b implementation, replace the old protocol 1a (version: x.x.1a).
* New Features:
    * New aarch64 binary architecture for ARM 64-bit CPU.
    * Detect and block Device Multi-login per-user accounts.
    * Calculate and limit the Bandwidth per-user accounts (per Giga Bytes).
    * commandline ***--json*** api stdout for usable for web api binding.
    * new customable identifier for make it harder from ISP Packet inspection
    * Server banner info for send to client.
    * Support Auth & Ping protocols for user before they are connected.
    * Multi-threaded tasks runtime (Thanks: tokio)
* Fixed:
    * User Database race condition (new seamless database account management system).
    * Precisely expired day.
    * Memory optimization.
    * etc...
**WARNING** : database user & config file is different from old version (1.3.1a). big sorry for that :)


### Version 1.3.1a [DISCONTIUNED]
* Initial release
* Now is discontiuned because is limited to support the new features. sorry..
