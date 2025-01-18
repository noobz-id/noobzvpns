# Licences

## NoobzVpn-Server :
* NoobzVpn-Server contains multi-licences:
	* **noobzvpns** executable is **proprietary** binary owned by **Noobz-ID** except the 3rd libraries (3rd licences on bottom) used in **noobzvpns**
	* **others** components is GPLv2 licences like: installer scripts, etc.
* **Noobz-ID** (the owner of **NoobzVpn-Server** and **NoobzVpn-Client**) does not allow any modifications to the **proprietary** file/software. you can pull request to add new features or report weird bugs.
* **Noobz-ID** not guaranteed any effect/action for using this software.
* The noobzvpns account are store in local database file ***/etc/noobzvpns/db_user.json***, we dont know anything about the database file inside your server (we wont be evil).
* If you using 3rd Server Provider, any problem report to their contact. we are not responsible about that. we just developing this software only.

## Third Party :
Since **NoobzVpn-Server** migrated from C++/C to Rust, core-libraries contains 3rd-libraries from official Rust repository [https://crates.io](https://crates.io)


- [toml](https://crates.io/crates/toml) : A native Rust encoder and decoder of TOML-formatted files and streams. Provides implementations of the standard Serialize/Deserialize traits for TOML data to facilitate deserializing and serializing Rust structures.
- [thiserror](https://crates.io/crates/thiserror) : derive(Error) give it flexible customable error.
- [rustls](https://crates.io/crates/rustls) : Rustls is a modern TLS library written in Rust.
- [tokio](https://crates.io/crates/tokio) : An event-driven, non-blocking I/O platform for writing asynchronous I/O backed applications.
- [tokio-rustls](https://crates.io/crates/tokio-rustls) : Asynchronous TLS/SSL streams for Tokio using Rustls.
- [tokio-util](https://crates.io/crates/tokio-util) : Additional utilities for working with Tokio.
- [serde](https://crates.io/crates/serde) : A generic serialization/deserialization framework
- [regex](https://crates.io/crates/regex) : An implementation of regular expressions for Rust. This implementation uses finite automata and guarantees linear time matching on all inputs.
- [serde_json](https://crates.io/crates/serde_json) : A JSON serialization file format
- [chrono](https://crates.io/crates/chrono) : Date and time library for Rust
- [readable_byte](https://crates.io/crates/readable_byte) : An implmentation of human-readable bytesize
- [hex](https://crates.io/crates/hex) : Encoding and decoding data into/from hexadecimal representation.
- [constcat](https://crates.io/crates/constcat) : concat! with support for const variables and expressions
- [clap](https://crates.io/crates/clap) : A simple to use, efficient, and full-featured Command Line Argument Parser
- [rustls-pemfile](https://crates.io/crates/rustls-pemfile) : Basic .pem file parser for keys and certificates
- [ring](https://crates.io/crates/ring) : Safe, fast, small crypto using Rust.
- [resolv-conf](https://crates.io/crates/resolv-conf) : The resolv.conf file parser
- [log](https://crates.io/crates/log) : A lightweight logging facade for Rust.
- [simplelog](https://crates.io/crates/simplelog) : A simple and easy-to-use logging facility for Rust's log crate
