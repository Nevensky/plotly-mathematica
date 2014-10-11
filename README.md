# PlotlyMathematica
A package for plotting plot.ly graphs in Wolfram Mathematica

![Plotly-Mathematica Plot](http://cl.ly/XybJ/Image%202014-10-11%20at%2012.15.25%20pm.png)


## Getting started
1. Install package (File->Install) and select plotly.m as the source
2. Type Needs["Plotly`"] in your notebook.
3. The syntax matches native Plot function, just type Plotly[yourfunction,{x,min,max}] to make your first plot.
4. (optional) type PlotlyLogin[username,APIKey] to plot under your Plotly account

## Version 0.2 (released)
- bugfixes & optimization
- proper package declaration
- out of the box plotting, no need to input user/pass

## Version 0.3 (planned)
- support for older versions of Mathematica (replace URLExecute with JSON)
- support for styling
- code rewrite

## Future versions
- support for discrete plots, histograms, heatmaps, data streams, etc.

# Legacy versions
## Version 0.1 (legacy)
- replicates the functionality of the the native Plot function within Mathematica
- works only in Mathematica 10
- no support for styling within Mathematica (PlotStyle, PlotLabel, AxesLabel, etc.)
- no support for imaginary units
- indeterminate function values are set to 0

