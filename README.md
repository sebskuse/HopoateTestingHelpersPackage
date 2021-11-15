# HopoateTestingHelpersPackage

Contains a copy of the testing helpers found in the main [Hopoate](https://github.com/darjeelingsteve/Hopoate) repository.

This separate repository is required for projects that use SPM because SPM does not build the testing helpers product form the main Hopoate repository as a true dynamic library and instead bundles the `Hopoate` target classes in with `HopoateTestingHelpers`. As such, this creates duplicate symbols in tests that use `HopoateTestingHelpers`, resulting in two separate instances of `DependencyContainer.shared`.
