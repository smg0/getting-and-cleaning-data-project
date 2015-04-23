Coursera Getting and Cleaning Data Course Project
=================================================

This project contains the scripts and documentation required for the
Coursera Getting and Cleaning Data course project.

Contents
=========

  * `get_dataset.R` - Script to download and install required data set.
  * `run_analysis.R` - Script to perform analysis of data resulting in
    a tidy data set.
  * `README.md` - This file.
  * `CodeBook.md` - Descriptions of tidy data set variables, data and
    transformations used to create the data set.


Data Set
========

The project uses the Human Activity Recognition Using Smartphones
Dataset Version 1.0:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This data set is released under the following license:

> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and
> Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using
> a  Multiclass Hardware-Friendly Support Vector Machine. International
> Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
> Spain. Dec 2012
>
> This dataset is distributed AS-IS and no responsibility implied or
> explicit can be addressed to the authors or their institutions for its
> use or misuse. Any commercial use is prohibited.

Downloading and Analyzing
=========================

The data set can be downloaded and unpacked using the `get_dataset.R`
script:

```
# R --vanilla < get_dataset.R
```

A tidy data set can be created using the `run_analysis.R` script:

```
# R --vanilla < run_analysis.R
```

This will produce a single tidy data set file: `UCI_HAR_Tidy_Dataset.txt`.

Additional Information
======================

`CodeBook.md` contains information on the transformations used to
create the tidy data set along with variable descriptions.
