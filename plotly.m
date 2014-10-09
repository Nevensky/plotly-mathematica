(* ::Package:: *)

(*Plotly v0.2*)


BeginPackage["Plotly`"];
Plotly::usage = "A package for plotting plot.ly graphs in Wolfram Mathematica"


Begin["`Private`"]


plotlyun="Mathematica";


plotlykey="u1ns4bx2df";


PlotlyLogin[plotlyunlogin_,plotlykeylogin_]:=Set[{plotlyun,plotlykey},{plotlyunlogin,plotlykeylogin}];


plotlyframed[d_]:=Hyperlink[Framed[Show[Import[StringJoin[StringReplace[d,{"\""->"","{"->"","}"->"","url"->"","message"~~__->"",Whitespace->"",","->"",":"->"","https"->"https:"}],".png"]],ImageSize->Large]],StringReplace[d,{"\""->"","{"->"","}"->"","url"->"","message"~~__->"",Whitespace->"",","->"",":"->"","https"->"https:"}]]


(* ::Input:: *)
(*"Cot[x] ne radi! Pojedina\[CHacek]ni graf Log[x] ne radi"*)


Options[Plotly]={PlotLabel->"a plot from the mathematica api"};


Plotly[f_,{x_,min_,max_},OptionsPattern[]]:=plotlyframed[URLExecute["https://plot.ly/clientresp",{"un"->plotlyun,"key"->plotlykey,"origin"->"plot","platform"->"mathematica",
"args"->StringReplace[
If[StringCount[ToString[f],","]>0,
StringJoin[
Table[
StringJoin["[{\"x\":",
StringReplace[
ToString[
Table[x,{x,min,max,.1}]],
{"{"->"[","}"->"]",".,"->".0,",".}"->".0]","Indeterminate"->"null",".e,"->".0,","e,"->",","e}"->"]",".e}"->".0]",".e"->".0e"}]
,",\"y\":",
StringReplace[
ToString[
NumberForm[Table[f,{x,min,max,.1}][[All,i]],NumberFormat->(Row[{#1,"e",#3}]&)]],
{"}"->"]",".,"->".0,",".}"->".0]",","~~ShortestMatch[___]~~"I"->", null","{"~~ShortestMatch[___]~~"I"->"[null","Indeterminate"->"null","-Infinity"->"null","Infinity"->"null","ComplexInfinity"->"null",".e,"->".0,","e,"->",","e}"->"]",".e}"->".0]",".e"->".0e","0.e"->"0.0","{"->"["}]
,",\"type\":\"scatter\"},"]
,{i,StringCount[ToString[f],","]+1}],
"]"],
StringJoin[StringReplace[
StringJoin["[{\"x\":",
ToString[
Table[x,{x,min,max,.1}]
],",\"y\":",
ToString[
NumberForm[Table[f,{x,min,max,.1}],NumberFormat->(Row[{#1,"e",#3}]&)]],",\"type\":\"scatter\"}"],{":{"->":[",":{"->"[","},\""->"],\"","}{"->"},{",".,"->".0,",".}"->".0]",","~~ShortestMatch[___]~~"I"->", null","{"~~ShortestMatch[___]~~"I"->"[null","Indeterminate"->"null","ComplexInfinity"->"null","-Infinity"->"null","Infinity"->"null",".e,"->".0,","e,"->",","e}"->"]",".e}"->".0]",".e"->".0e","0.e"->"0.0"}],"]"]]
,{",[{"->",{","},]"->"}]","nullndeterminat"->"null, null"}],
"kwargs"->StringJoin["{
  \"filename\": \"mathematicaplot\",
  \"fileopt\": \"new\",
  \"style\": {
      \"type\": \"scatter\"
  },
  \"traces\": [0,1,2],
  \"layout\": {
      \"title\": \"","a plot from the mathematica api v0.2","\"
  },
  \"world_readable\": true
}"]
},"Method"->"POST"]]


End[]


EndPackage[]
