# PlotlyMathematica
A package for plotting plot.ly graphs in Wolfram Mathematica

![Plotly-Mathematica Plot](http://cl.ly/Xl3r/Image%202014-09-27%20at%2012.56.22%20am.png)


## Getting started
1. Install package (File->Install)
2. Type Needs["Plotly`"] in your notebook and input your Plotly username and key.
3. Start plotting :)!

(You can ignore this error "Context \!\(\"Plotly`\"\) was not created when Needs was evaluated.")

## Version 0.1 details
- replicates the functionality of the the native Plot function within Mathematica
- works only in Mathematica 10
- no support for styling within Mathematica (PlotStyle, PlotLabel, AxesLabel, etc.)
- no support for imaginary units
- indeterminate function values are set to 0

## Version 0.2 planned
- support for older versions of Mathematica (replace URLExecute with JSON)
- support for styling
- bugfixes & optimization
- proper package declaration

## Future versions planned
- support for discrete plots, histograms, heatmaps, data streams, etc.
