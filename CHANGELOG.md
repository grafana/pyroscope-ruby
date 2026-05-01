# Changelog

## [1.0.7](https://github.com/grafana/pyroscope-ruby/compare/ruby-1.0.6...ruby/1.0.7) (2026-05-01)


### Bug Fixes

* **ci:** remove release-please entirely ([#461](https://github.com/grafana/pyroscope-ruby/issues/461)) ([e83c23b](https://github.com/grafana/pyroscope-ruby/commit/e83c23b1858ba17a941ace173e815c41597603b7))
* **deps:** update rust crate rbspy to 0.46 ([#67](https://github.com/grafana/pyroscope-ruby/issues/67)) ([bdc1fe8](https://github.com/grafana/pyroscope-ruby/commit/bdc1fe899cb0ae4f616a48e6fabdb6d39ede284f))
* **rbspy:** don't panic when cwd is a suffix of a frame filename ([#32](https://github.com/grafana/pyroscope-ruby/issues/32)) ([b1af075](https://github.com/grafana/pyroscope-ruby/commit/b1af07504eb8ddb7ec34565755bbe9be7f74283a))
* set --openssldir=/etc/ssl so profiler finds system CA bundle ([#18](https://github.com/grafana/pyroscope-ruby/issues/18)) ([94cc04b](https://github.com/grafana/pyroscope-ruby/commit/94cc04bbd30f6c5487970b02ca24b487dd037e21))


### Miscellaneous Chores

* **deps:** bump openssl from 0.10.76 to 0.10.78 in /ext/rbspy ([#54](https://github.com/grafana/pyroscope-ruby/issues/54)) ([e3aec4f](https://github.com/grafana/pyroscope-ruby/commit/e3aec4fda89e3d7eb309a85709e972860be28914))
* **deps:** bump rand from 0.8.5 to 0.8.6 in /ext/rbspy ([#57](https://github.com/grafana/pyroscope-ruby/issues/57)) ([6d19d93](https://github.com/grafana/pyroscope-ruby/commit/6d19d930da869298046cad99500da913caa7133e))
* **deps:** lock file maintenance ([#23](https://github.com/grafana/pyroscope-ruby/issues/23)) ([c559df2](https://github.com/grafana/pyroscope-ruby/commit/c559df22bcdcdb49c1ddd3b15e4b0e75c0536758))
* **deps:** lock file maintenance ([#37](https://github.com/grafana/pyroscope-ruby/issues/37)) ([ff66c0c](https://github.com/grafana/pyroscope-ruby/commit/ff66c0c86a0578e9c938af78bb5e9740b47bfc61))
* **deps:** lock file maintenance ([#467](https://github.com/grafana/pyroscope-ruby/issues/467)) ([09411da](https://github.com/grafana/pyroscope-ruby/commit/09411daca91120c4863983273863c55b02b4dd89))
* **deps:** lock file maintenance ([#478](https://github.com/grafana/pyroscope-ruby/issues/478)) ([447d8ee](https://github.com/grafana/pyroscope-ruby/commit/447d8eef3621be5b9b09b0b9eca3968bca081c2a))
* **deps:** lock file maintenance ([#51](https://github.com/grafana/pyroscope-ruby/issues/51)) ([99d4d11](https://github.com/grafana/pyroscope-ruby/commit/99d4d11b7b8b95ad8700ccdabe0c2d5267e8b0e2))
* **deps:** update actions/download-artifact action to v8.0.1 ([#7](https://github.com/grafana/pyroscope-ruby/issues/7)) ([1b744c3](https://github.com/grafana/pyroscope-ruby/commit/1b744c34d4c5ed392129760d4f1d7d10a2792332))
* **deps:** update dependency openssl/openssl to v3.5.6 ([#35](https://github.com/grafana/pyroscope-ruby/issues/35)) ([94725f9](https://github.com/grafana/pyroscope-ruby/commit/94725f947c94113a3df0c0100661e124d3df3d57))
* **deps:** update dependency ruby to v4.0.2 ([#9](https://github.com/grafana/pyroscope-ruby/issues/9)) ([0bd336c](https://github.com/grafana/pyroscope-ruby/commit/0bd336c1632ef089104e48a53ea789005d91d00b))
* **deps:** update dtolnay/rust-toolchain digest to 3c5f7ea ([#22](https://github.com/grafana/pyroscope-ruby/issues/22)) ([f5f22ff](https://github.com/grafana/pyroscope-ruby/commit/f5f22ff8f36f3aa2498ecc74c7650857fc858be6))
* **deps:** update dtolnay/rust-toolchain digest to 3c5f7ea ([#4](https://github.com/grafana/pyroscope-ruby/issues/4)) ([066bfd1](https://github.com/grafana/pyroscope-ruby/commit/066bfd1e2cd19ca8b110af6ed69ede83a512bb38))
* **deps:** update googleapis/release-please-action action to v5 ([#61](https://github.com/grafana/pyroscope-ruby/issues/61)) ([34de611](https://github.com/grafana/pyroscope-ruby/commit/34de61143b31ea2bb1c139dcd56ba801f146712c))
* **deps:** update grafana/shared-workflows/ action to ([#24](https://github.com/grafana/pyroscope-ruby/issues/24)) ([769850e](https://github.com/grafana/pyroscope-ruby/commit/769850e652c51995c3457e41f928668553c89147))
* **deps:** update grafana/shared-workflows/ action to ([#25](https://github.com/grafana/pyroscope-ruby/issues/25)) ([209aa6d](https://github.com/grafana/pyroscope-ruby/commit/209aa6da2871ffe343ecb6f74e47ac889db50591))
* **deps:** update grafana/shared-workflows/ action to ([#26](https://github.com/grafana/pyroscope-ruby/issues/26)) ([84d14c5](https://github.com/grafana/pyroscope-ruby/commit/84d14c535493745f739f5a09925fd54b77ba835b))
* **deps:** update grafana/shared-workflows/ action to ([#5](https://github.com/grafana/pyroscope-ruby/issues/5)) ([15b8b5a](https://github.com/grafana/pyroscope-ruby/commit/15b8b5a1e98b6940afbe87cb22968e535ae2f6dc))
* **deps:** update ruby:4.0 docker digest to d0996db ([#6](https://github.com/grafana/pyroscope-ruby/issues/6)) ([2fb80cf](https://github.com/grafana/pyroscope-ruby/commit/2fb80cf8852dbfd10119af01e3de9db0a1fdbf58))
* **deps:** update ruby:4.0 docker digest to d6c89d3 ([#28](https://github.com/grafana/pyroscope-ruby/issues/28)) ([5ca4015](https://github.com/grafana/pyroscope-ruby/commit/5ca40153476edded0198ae3e962f2286a88ea3be))
* **deps:** update ruby/setup-ruby action to v1.299.0 ([#12](https://github.com/grafana/pyroscope-ruby/issues/12)) ([b19d867](https://github.com/grafana/pyroscope-ruby/commit/b19d867c1660d4527229da0f7b38bfcc49e7637a))
* **deps:** update ruby/setup-ruby action to v1.300.0 ([#31](https://github.com/grafana/pyroscope-ruby/issues/31)) ([9f69455](https://github.com/grafana/pyroscope-ruby/commit/9f69455f243d4459d0e66389ce607d3118a9a867))
* **deps:** update ruby/setup-ruby action to v1.305.0 ([#44](https://github.com/grafana/pyroscope-ruby/issues/44)) ([48c9e73](https://github.com/grafana/pyroscope-ruby/commit/48c9e735c7b69ca99524bbd8953d2ae06ccc9dc1))
* **deps:** update rust crate libc to v0.2.185 ([#45](https://github.com/grafana/pyroscope-ruby/issues/45)) ([3cd4e5f](https://github.com/grafana/pyroscope-ruby/commit/3cd4e5f2069f90770a127b40c132f57583245ae4))
* **deps:** update rust crate libc to v0.2.186 ([#62](https://github.com/grafana/pyroscope-ruby/issues/62)) ([1363586](https://github.com/grafana/pyroscope-ruby/commit/1363586a824b2a73296a3d766c136966c16fcd41))
* **deps:** update rust crate pyroscope to v2.0.1 ([#53](https://github.com/grafana/pyroscope-ruby/issues/53)) ([807eab7](https://github.com/grafana/pyroscope-ruby/commit/807eab73cbbb07ed5783565042567e799151927f))
* **deps:** update rust crate pyroscope to v2.0.3 ([#65](https://github.com/grafana/pyroscope-ruby/issues/65)) ([b943527](https://github.com/grafana/pyroscope-ruby/commit/b943527f3b63c47948d4577cf6d22d826611bc2c))
* **deps:** update rust crate rbspy to 0.43 ([#471](https://github.com/grafana/pyroscope-ruby/issues/471)) ([1e524d3](https://github.com/grafana/pyroscope-ruby/commit/1e524d38d84dfedc799515cb70ee434ef91a28e6))
* **deps:** update rust crate rbspy to 0.44 ([#477](https://github.com/grafana/pyroscope-ruby/issues/477)) ([c7cfe39](https://github.com/grafana/pyroscope-ruby/commit/c7cfe39fecd8a0624df5c5d22b709e73747ddb4d))
* **deps:** update rust crate remoteprocess to v0.5.2 ([#59](https://github.com/grafana/pyroscope-ruby/issues/59)) ([14cc724](https://github.com/grafana/pyroscope-ruby/commit/14cc724eebf605b87ae4497a2b2ea2cc1396bcde))
* **deps:** update rust crate uuid to v1.23.0 ([#481](https://github.com/grafana/pyroscope-ruby/issues/481)) ([9c4b53a](https://github.com/grafana/pyroscope-ruby/commit/9c4b53aef55b13dc6da99396119e33ec9dc02aa0))
* **deps:** update softprops/action-gh-release action to v2.5.2 ([#473](https://github.com/grafana/pyroscope-ruby/issues/473)) ([1700be3](https://github.com/grafana/pyroscope-ruby/commit/1700be3e34e7351a2f5f030187a2fac1ce1082e9))
* **deps:** update softprops/action-gh-release action to v2.5.3 ([#474](https://github.com/grafana/pyroscope-ruby/issues/474)) ([12e34c1](https://github.com/grafana/pyroscope-ruby/commit/12e34c109bd0e408dc0401430f4da4b5245a09da))
* **deps:** update softprops/action-gh-release action to v2.6.1 ([#20](https://github.com/grafana/pyroscope-ruby/issues/20)) ([dd88a13](https://github.com/grafana/pyroscope-ruby/commit/dd88a13fe2870f8733ee600a945fed4e2d626f94))
* **main:** release ruby 1.0.2 ([#21](https://github.com/grafana/pyroscope-ruby/issues/21)) ([3e09ef4](https://github.com/grafana/pyroscope-ruby/commit/3e09ef459da568af3b4fbb6ad40e1e3349e1605f))
* **main:** release ruby 1.0.3 ([#33](https://github.com/grafana/pyroscope-ruby/issues/33)) ([6711294](https://github.com/grafana/pyroscope-ruby/commit/6711294ece5e85d4b808426a4026ab3e6d651606))
* **main:** release ruby 1.0.4 ([#36](https://github.com/grafana/pyroscope-ruby/issues/36)) ([29d915b](https://github.com/grafana/pyroscope-ruby/commit/29d915bc2825c6f97787058e6799ec0dbaf206d9))
* **main:** release ruby 1.0.5 ([#38](https://github.com/grafana/pyroscope-ruby/issues/38)) ([2a3921e](https://github.com/grafana/pyroscope-ruby/commit/2a3921e29dd48402567cde8935a4d467c1b76266))
* **main:** release ruby 1.0.6 ([#60](https://github.com/grafana/pyroscope-ruby/issues/60)) ([c071fab](https://github.com/grafana/pyroscope-ruby/commit/c071fab6a0bb52a219714cf8330403d46a5429b3))
* prepare lib 2.0.0 ([#462](https://github.com/grafana/pyroscope-ruby/issues/462)) ([a349cd1](https://github.com/grafana/pyroscope-ruby/commit/a349cd1fb6381d2087dfb73f96560e6b402babd4))
* **ruby:** keep only ruby in this repo ([#1](https://github.com/grafana/pyroscope-ruby/issues/1)) ([58b241d](https://github.com/grafana/pyroscope-ruby/commit/58b241d077de8a42c771a14f726f54257901aa9c))


### Continuous Integration

* add release-please configuration ([#14](https://github.com/grafana/pyroscope-ruby/issues/14)) ([878995f](https://github.com/grafana/pyroscope-ruby/commit/878995f95b8abffb77f15aaa9af54c091ad36a07))
* use RubyGems trusted publishing for gem releases ([#29](https://github.com/grafana/pyroscope-ruby/issues/29)) ([06f3f72](https://github.com/grafana/pyroscope-ruby/commit/06f3f722695c85e959de4d3867e517872d638ca0))

## [1.0.6](https://github.com/grafana/pyroscope-ruby/compare/ruby-1.0.5...ruby/1.0.6) (2026-05-01)


### Bug Fixes

* **deps:** update rust crate rbspy to 0.46 ([#67](https://github.com/grafana/pyroscope-ruby/issues/67)) ([bdc1fe8](https://github.com/grafana/pyroscope-ruby/commit/bdc1fe899cb0ae4f616a48e6fabdb6d39ede284f))


### Miscellaneous Chores

* **deps:** bump rand from 0.8.5 to 0.8.6 in /ext/rbspy ([#57](https://github.com/grafana/pyroscope-ruby/issues/57)) ([6d19d93](https://github.com/grafana/pyroscope-ruby/commit/6d19d930da869298046cad99500da913caa7133e))
* **deps:** update googleapis/release-please-action action to v5 ([#61](https://github.com/grafana/pyroscope-ruby/issues/61)) ([34de611](https://github.com/grafana/pyroscope-ruby/commit/34de61143b31ea2bb1c139dcd56ba801f146712c))
* **deps:** update ruby/setup-ruby action to v1.305.0 ([#44](https://github.com/grafana/pyroscope-ruby/issues/44)) ([48c9e73](https://github.com/grafana/pyroscope-ruby/commit/48c9e735c7b69ca99524bbd8953d2ae06ccc9dc1))
* **deps:** update rust crate libc to v0.2.186 ([#62](https://github.com/grafana/pyroscope-ruby/issues/62)) ([1363586](https://github.com/grafana/pyroscope-ruby/commit/1363586a824b2a73296a3d766c136966c16fcd41))
* **deps:** update rust crate pyroscope to v2.0.1 ([#53](https://github.com/grafana/pyroscope-ruby/issues/53)) ([807eab7](https://github.com/grafana/pyroscope-ruby/commit/807eab73cbbb07ed5783565042567e799151927f))
* **deps:** update rust crate pyroscope to v2.0.3 ([#65](https://github.com/grafana/pyroscope-ruby/issues/65)) ([b943527](https://github.com/grafana/pyroscope-ruby/commit/b943527f3b63c47948d4577cf6d22d826611bc2c))
* **deps:** update rust crate remoteprocess to v0.5.2 ([#59](https://github.com/grafana/pyroscope-ruby/issues/59)) ([14cc724](https://github.com/grafana/pyroscope-ruby/commit/14cc724eebf605b87ae4497a2b2ea2cc1396bcde))

## [1.0.5](https://github.com/grafana/pyroscope-ruby/compare/ruby-1.0.4...ruby/1.0.5) (2026-04-23)


### Miscellaneous Chores

* **deps:** bump openssl from 0.10.76 to 0.10.78 in /ext/rbspy ([#54](https://github.com/grafana/pyroscope-ruby/issues/54)) ([e3aec4f](https://github.com/grafana/pyroscope-ruby/commit/e3aec4fda89e3d7eb309a85709e972860be28914))
* **deps:** lock file maintenance ([#37](https://github.com/grafana/pyroscope-ruby/issues/37)) ([ff66c0c](https://github.com/grafana/pyroscope-ruby/commit/ff66c0c86a0578e9c938af78bb5e9740b47bfc61))
* **deps:** lock file maintenance ([#51](https://github.com/grafana/pyroscope-ruby/issues/51)) ([99d4d11](https://github.com/grafana/pyroscope-ruby/commit/99d4d11b7b8b95ad8700ccdabe0c2d5267e8b0e2))
* **deps:** update rust crate libc to v0.2.185 ([#45](https://github.com/grafana/pyroscope-ruby/issues/45)) ([3cd4e5f](https://github.com/grafana/pyroscope-ruby/commit/3cd4e5f2069f90770a127b40c132f57583245ae4))

## [1.0.4](https://github.com/grafana/pyroscope-ruby/compare/ruby-1.0.3...ruby/1.0.4) (2026-04-11)


### Miscellaneous Chores

* **deps:** update dependency openssl/openssl to v3.5.6 ([#35](https://github.com/grafana/pyroscope-ruby/issues/35)) ([94725f9](https://github.com/grafana/pyroscope-ruby/commit/94725f947c94113a3df0c0100661e124d3df3d57))

## [1.0.3](https://github.com/grafana/pyroscope-ruby/compare/ruby-1.0.2...ruby/1.0.3) (2026-04-10)


### Bug Fixes

* **rbspy:** don't panic when cwd is a suffix of a frame filename ([#32](https://github.com/grafana/pyroscope-ruby/issues/32)) ([b1af075](https://github.com/grafana/pyroscope-ruby/commit/b1af07504eb8ddb7ec34565755bbe9be7f74283a))


### Miscellaneous Chores

* **deps:** update ruby:4.0 docker digest to d6c89d3 ([#28](https://github.com/grafana/pyroscope-ruby/issues/28)) ([5ca4015](https://github.com/grafana/pyroscope-ruby/commit/5ca40153476edded0198ae3e962f2286a88ea3be))
* **deps:** update ruby/setup-ruby action to v1.300.0 ([#31](https://github.com/grafana/pyroscope-ruby/issues/31)) ([9f69455](https://github.com/grafana/pyroscope-ruby/commit/9f69455f243d4459d0e66389ce607d3118a9a867))

## [1.0.2](https://github.com/grafana/pyroscope-ruby/compare/ruby-1.0.1...ruby/1.0.2) (2026-04-08)


### Bug Fixes

* **ci:** remove release-please entirely ([#461](https://github.com/grafana/pyroscope-ruby/issues/461)) ([e83c23b](https://github.com/grafana/pyroscope-ruby/commit/e83c23b1858ba17a941ace173e815c41597603b7))
* set --openssldir=/etc/ssl so profiler finds system CA bundle ([#18](https://github.com/grafana/pyroscope-ruby/issues/18)) ([94cc04b](https://github.com/grafana/pyroscope-ruby/commit/94cc04bbd30f6c5487970b02ca24b487dd037e21))


### Miscellaneous Chores

* **deps:** lock file maintenance ([#23](https://github.com/grafana/pyroscope-ruby/issues/23)) ([c559df2](https://github.com/grafana/pyroscope-ruby/commit/c559df22bcdcdb49c1ddd3b15e4b0e75c0536758))
* **deps:** lock file maintenance ([#467](https://github.com/grafana/pyroscope-ruby/issues/467)) ([09411da](https://github.com/grafana/pyroscope-ruby/commit/09411daca91120c4863983273863c55b02b4dd89))
* **deps:** lock file maintenance ([#478](https://github.com/grafana/pyroscope-ruby/issues/478)) ([447d8ee](https://github.com/grafana/pyroscope-ruby/commit/447d8eef3621be5b9b09b0b9eca3968bca081c2a))
* **deps:** update actions/download-artifact action to v8.0.1 ([#7](https://github.com/grafana/pyroscope-ruby/issues/7)) ([1b744c3](https://github.com/grafana/pyroscope-ruby/commit/1b744c34d4c5ed392129760d4f1d7d10a2792332))
* **deps:** update dependency ruby to v4.0.2 ([#9](https://github.com/grafana/pyroscope-ruby/issues/9)) ([0bd336c](https://github.com/grafana/pyroscope-ruby/commit/0bd336c1632ef089104e48a53ea789005d91d00b))
* **deps:** update dtolnay/rust-toolchain digest to 3c5f7ea ([#22](https://github.com/grafana/pyroscope-ruby/issues/22)) ([f5f22ff](https://github.com/grafana/pyroscope-ruby/commit/f5f22ff8f36f3aa2498ecc74c7650857fc858be6))
* **deps:** update dtolnay/rust-toolchain digest to 3c5f7ea ([#4](https://github.com/grafana/pyroscope-ruby/issues/4)) ([066bfd1](https://github.com/grafana/pyroscope-ruby/commit/066bfd1e2cd19ca8b110af6ed69ede83a512bb38))
* **deps:** update grafana/shared-workflows/ action to ([#24](https://github.com/grafana/pyroscope-ruby/issues/24)) ([769850e](https://github.com/grafana/pyroscope-ruby/commit/769850e652c51995c3457e41f928668553c89147))
* **deps:** update grafana/shared-workflows/ action to ([#25](https://github.com/grafana/pyroscope-ruby/issues/25)) ([209aa6d](https://github.com/grafana/pyroscope-ruby/commit/209aa6da2871ffe343ecb6f74e47ac889db50591))
* **deps:** update grafana/shared-workflows/ action to ([#26](https://github.com/grafana/pyroscope-ruby/issues/26)) ([84d14c5](https://github.com/grafana/pyroscope-ruby/commit/84d14c535493745f739f5a09925fd54b77ba835b))
* **deps:** update grafana/shared-workflows/ action to ([#5](https://github.com/grafana/pyroscope-ruby/issues/5)) ([15b8b5a](https://github.com/grafana/pyroscope-ruby/commit/15b8b5a1e98b6940afbe87cb22968e535ae2f6dc))
* **deps:** update ruby:4.0 docker digest to d0996db ([#6](https://github.com/grafana/pyroscope-ruby/issues/6)) ([2fb80cf](https://github.com/grafana/pyroscope-ruby/commit/2fb80cf8852dbfd10119af01e3de9db0a1fdbf58))
* **deps:** update ruby/setup-ruby action to v1.299.0 ([#12](https://github.com/grafana/pyroscope-ruby/issues/12)) ([b19d867](https://github.com/grafana/pyroscope-ruby/commit/b19d867c1660d4527229da0f7b38bfcc49e7637a))
* **deps:** update rust crate rbspy to 0.43 ([#471](https://github.com/grafana/pyroscope-ruby/issues/471)) ([1e524d3](https://github.com/grafana/pyroscope-ruby/commit/1e524d38d84dfedc799515cb70ee434ef91a28e6))
* **deps:** update rust crate rbspy to 0.44 ([#477](https://github.com/grafana/pyroscope-ruby/issues/477)) ([c7cfe39](https://github.com/grafana/pyroscope-ruby/commit/c7cfe39fecd8a0624df5c5d22b709e73747ddb4d))
* **deps:** update rust crate uuid to v1.23.0 ([#481](https://github.com/grafana/pyroscope-ruby/issues/481)) ([9c4b53a](https://github.com/grafana/pyroscope-ruby/commit/9c4b53aef55b13dc6da99396119e33ec9dc02aa0))
* **deps:** update softprops/action-gh-release action to v2.5.2 ([#473](https://github.com/grafana/pyroscope-ruby/issues/473)) ([1700be3](https://github.com/grafana/pyroscope-ruby/commit/1700be3e34e7351a2f5f030187a2fac1ce1082e9))
* **deps:** update softprops/action-gh-release action to v2.5.3 ([#474](https://github.com/grafana/pyroscope-ruby/issues/474)) ([12e34c1](https://github.com/grafana/pyroscope-ruby/commit/12e34c109bd0e408dc0401430f4da4b5245a09da))
* **deps:** update softprops/action-gh-release action to v2.6.1 ([#20](https://github.com/grafana/pyroscope-ruby/issues/20)) ([dd88a13](https://github.com/grafana/pyroscope-ruby/commit/dd88a13fe2870f8733ee600a945fed4e2d626f94))
* prepare lib 2.0.0 ([#462](https://github.com/grafana/pyroscope-ruby/issues/462)) ([a349cd1](https://github.com/grafana/pyroscope-ruby/commit/a349cd1fb6381d2087dfb73f96560e6b402babd4))
* **ruby:** keep only ruby in this repo ([#1](https://github.com/grafana/pyroscope-ruby/issues/1)) ([58b241d](https://github.com/grafana/pyroscope-ruby/commit/58b241d077de8a42c771a14f726f54257901aa9c))


### Continuous Integration

* add release-please configuration ([#14](https://github.com/grafana/pyroscope-ruby/issues/14)) ([878995f](https://github.com/grafana/pyroscope-ruby/commit/878995f95b8abffb77f15aaa9af54c091ad36a07))
* use RubyGems trusted publishing for gem releases ([#29](https://github.com/grafana/pyroscope-ruby/issues/29)) ([06f3f72](https://github.com/grafana/pyroscope-ruby/commit/06f3f722695c85e959de4d3867e517872d638ca0))
