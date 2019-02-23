# pkgnet 0.3.2.9999 (current dev)

## NEW FEATURES
* Objects of new `DirectedGraph` class now slot into the `pkg_graph` field of network reporters. These objects encapsulate the graph modeling of networks and have a more expressive set of methods for analysis. Check out the full documentation with `?DirectedGraph`.  ([#181](https://github.com/UptakeOpenSource/pkgnet/pull/181))
    * Use `pkg_graph$node_measures` and `pkg_graph$graph_measures` to respectively calculate node-level and graph-level measures. 
    * Use `pkg_graph$default_node_measures` and `pkg_graph$default_graph_measures` to see the measures calculated by default. 
    * Use `pkg_graph$available_node_measures` and `pkg_graph$available_graph_measures` to see the all supported measures.
    * The igraph object is now instead available at `pkg_graph$igraph`.

## CHANGES
* Reporters' `pkg_graph` field now contain an object of new `DirectedGraph` class. Previously it held an igraph object. This igraph object is now instead available at `pkg_graph$igraph`. See NEW FEATURES section for other details about the new `pkg_graph` object. ([#181](https://github.com/UptakeOpenSource/pkgnet/pull/181))
* Default measures now exist for each reporter. These can be calculated with the
new method `calculate_default_measures` on reporters. ([#181](https://github.com/UptakeOpenSource/pkgnet/pull/181))
    * The report from `CreatePackageReport` will now only show default measures.
* Reporters now only allow packages to be set once. To report on a new package, please instantiate a new instance of the reporter of interest. ([#106](https://github.com/UptakeOpenSource/pkgnet/issues/106), [#181](https://github.com/UptakeOpenSource/pkgnet/pull/181))
* `outSubgraphSize` and `inSubgraphSize` calculations have been updated to decrement by 1. This means the node itself is no longer included in the count. ([#191](https://github.com/UptakeOpenSource/pkgnet/issues/191), [#181](https://github.com/UptakeOpenSource/pkgnet/pull/181))
* The report from `CreatePackageReport` now prints the version of pkgnet used at the bottom. ([#181](https://github.com/UptakeOpenSource/pkgnet/pull/181))

## BUG FIXES
* Static outputs shown in the vignette that were outdated have been updated. ([#189](https://github.com/UptakeOpenSource/pkgnet/issues/189), [#181](https://github.com/UptakeOpenSource/pkgnet/pull/181))

# pkgnet 0.3.2

## NEW FEATURES
None

## CHANGES
* Added unit tests for network measure calculations ([#166](https://github.com/UptakeOpenSource/pkgnet/pull/166)).
* Revised unit test setup and teardown files to enable devtools::test() to work as well as CRAN server testing ([#167](https://github.com/UptakeOpenSource/pkgnet/pull/167))

## BUG FIXES
* Corrected node statistics table merging error ([#165](https://github.com/UptakeOpenSource/pkgnet/issues/165), [#166](https://github.com/UptakeOpenSource/pkgnet/pull/166))
* Added a NAMESPACE entry for knitr to suppress warning on CRAN server checks ([#168](https://github.com/UptakeOpenSource/pkgnet/pull/168))

# pkgnet 0.3.1

## NEW FEATURES
None

## CHANGES
* Unit testing strategy on CRAN vs Travis and local. See [#160](https://github.com/UptakeOpenSource/pkgnet/issues/160) for details. 

## BUG FIXES
None

# pkgnet 0.3.0

## NEW FEATURES
* `InheritanceReporter`, a reporter for R6, Reference, and S4 class inheritance relationships within a package. ([#14](https://github.com/UptakeOpenSource/pkgnet/issues/14), [#129](https://github.com/UptakeOpenSource/pkgnet/pull/129))
* Dropdown menu in graph visualizations for selecting which node to highlight. ([#132](https://github.com/UptakeOpenSource/pkgnet/issues/132), [#143](https://github.com/UptakeOpenSource/pkgnet/pull/143))

## CHANGES
* Edge direction reversed to align with [UML dependency diagram](https://en.wikipedia.org/wiki/Dependency_(UML)) convention. Now, if A depends on B, then A->B. ([#131](https://github.com/UptakeOpenSource/pkgnet/issues/131), [#143](https://github.com/UptakeOpenSource/pkgnet/pull/143))
* Reporters now support all layouts available in igraph. Use `grep("^layout_\\S", getNamespaceExports("igraph"), value = TRUE)` to see valid options. ([#143](https://github.com/UptakeOpenSource/pkgnet/pull/143))
* `FunctionReporter` now utilizes graphopt layout by default. ([#143](https://github.com/UptakeOpenSource/pkgnet/pull/143))
* `FunctionReporter` now supports non-exported functions and R6 class methods. ([#123](https://github.com/UptakeOpenSource/pkgnet/issues/123), [#128](https://github.com/UptakeOpenSource/pkgnet/pull/128))
* Orphaned node clustering was removed in favor of using layout to better handle graphs with many orphaned nodes. ([#102](https://github.com/UptakeOpenSource/pkgnet/issues/102), [#143](https://github.com/UptakeOpenSource/pkgnet/pull/143))
* Testing strategy with subpackages are now CRAN and TRAVIS compatible. ([#121](https://github.com/UptakeOpenSource/pkgnet/issues/121), [#139](https://github.com/UptakeOpenSource/pkgnet/pull/139), [#144](https://github.com/UptakeOpenSource/pkgnet/pull/144))
* Test package `milne` created for unit testing of `InheritanceReporter` and R6 method support in `FunctionReporter`. ([#128](https://github.com/UptakeOpenSource/pkgnet/issues/128), [#129](https://github.com/UptakeOpenSource/pkgnet/pull/129))
* Width of html reports now adjust to size of screen. ([#143](https://github.com/UptakeOpenSource/pkgnet/pull/143))
* Default node colors are now colorblind accessible. ([#130](https://github.com/UptakeOpenSource/pkgnet/issues/130), [#141](https://github.com/UptakeOpenSource/pkgnet/pull/141))
* Additional various improvements to UX for package reports. ([#143](https://github.com/UptakeOpenSource/pkgnet/pull/143))

## BUG FIXES
* Rendering of the table in Function Network tab. ([#136](https://github.com/UptakeOpenSource/pkgnet/issues/136), [#138](https://github.com/UptakeOpenSource/pkgnet/pull/138))
