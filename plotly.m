(* ::Package:: *)

plotlyun=InputString["Type in your plotly username"];


plotlykey=InputString["Type in your plotly key"];


plotlyframed[d_]:=Hyperlink[Framed[Show[Import[StringJoin[StringReplace[d,{"\""->"","{"->"","}"->"","url"->"","message"~~__->"",Whitespace->"",","->"",":"->"","https"->"https:"}],".png"]],ImageSize->Large]],StringReplace[d,{"\""->"","{"->"","}"->"","url"->"","message"~~__->"",Whitespace->"",","->"",":"->"","https"->"https:"}]]


Plotly[f_,{x_,min_,max_}]:=plotlyframed[URLExecute["https://plot.ly/clientresp",{"un"->plotlyun,"key"->plotlykey,"origin"->"plot","platform"->"mathematica",
"args"->StringReplace[
If[StringCount[ToString[f],","]>0,
StringJoin[
Table[
StringJoin["[{\"x\":",
StringReplace[
ToString[
Table[x,{x,min,max,.1}]],
{"{"->"[","}"->"]",".,"->".0,",".}"->".0]","Indeterminate"->"0",".e,"->".0,","e,"->",","e}"->"]",".e}"->".0]",".e"->".0e"}]
,",\"y\":",
StringReplace[
ToString[
NumberForm[Table[f,{x,min,max,.1}][[All,i]],NumberFormat->(Row[{#1,"e",#3}]&)]],
{"{"->"[","}"->"]",".,"->".0,",".}"->".0]","Indeterminate"->"0",".e,"->".0,","e,"->",","e}"->"]",".e}"->".0]",".e"->".0e"}]
,",\"type\":\"scatter\"},"]
,{i,StringCount[ToString[f],","]+1}],
"]"],
StringJoin[StringReplace[
StringJoin["[{\"x\":",
ToString[
Table[x,{x,min,max,.1}]
],",\"y\":",
ToString[
NumberForm[Table[f,{x,min,max,.1}],NumberFormat->(Row[{#1,"e",#3}]&)]],",\"type\":\"scatter\"}"],{":{"->":[",":{"->"[","},\""->"],\"","}{"->"},{",".,"->".0,",".}"->".0]","Indeterminate"->".0,",".e,"->".0,","e,"->",","e}"->"]",".e}"->".0]",".e"->".0e"}],"]"]]
,{",[{"->",{","},]"->"}]"}],
"kwargs"->"{
  \"filename\": \"mathematicaplot\",
  \"fileopt\": \"new\",
  \"style\": {
      \"type\": \"scatter\"
  },
  \"traces\": [0,1,2],
  \"layout\": {
      \"title\": \"a plot from the mathematica api\"
  },
  \"world_readable\": true
}"
},"Method"->"POST"]]
