Estimating Measurement Error
============================

This manuscript discusses evaluating measurement error using Hierarchical Linear
Models (HLM). The analysis and the discussion are done in the context of
large-scale studies where the cost of the study is a huge barrier.

> The data used for this analysis, unfortunately, cannot be published publicly.
Therefore the `Data` directory is empty. If the actual data is placed in this directory
the whole analysis should be reproducible using:

- [Stata](https://www.stata.com/) version SE 14.1
- [MarkDoc v 4.0.0](https://github.com/haghish/markdoc) literate programming package for Stata. This is the package that is used for generating the reports with. You can install this version of the package by typing:
    + installing `github` stata package: ```net install github, from("https://haghish.github.io/github/")```
    + installing `markdoc` version 4.0.0 (for reproducibility compatibility)     
    ```github install haghish/markdoc, version("4.0.0")```
- The analyses reports are exported in Markdown format, which makes them readable on GitHub
