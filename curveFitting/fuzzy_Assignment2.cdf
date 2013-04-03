(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[     72270,       1685]
NotebookOptionsPosition[     71650,       1640]
NotebookOutlinePosition[     72251,       1665]
CellTagsIndexPosition[     72208,       1662]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"f", "[", "x_", "]"}], " ", "=", " ", 
   RowBox[{"2", " ", "+", " ", 
    RowBox[{"0.5", " ", 
     RowBox[{"Sin", "[", 
      RowBox[{"2", " ", "Pi", " ", "x"}], "]"}]}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"y", "[", 
    RowBox[{"w0_", ",", " ", "w1_", ",", " ", "z_"}], "]"}], " ", "=", " ", 
   RowBox[{"w0", " ", "+", " ", 
    RowBox[{"w1", " ", "*", " ", "z"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"xVal", " ", "=", " ", 
   RowBox[{"Part", "[", 
    RowBox[{
     RowBox[{"RandomReal", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1.5", ",", "2.5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "21"}], "}"}]}], "]"}], ",", " ", "1"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"FindFit", "[", 
    RowBox[{
     RowBox[{"f", "[", "xVal", "]"}], ",", " ", 
     RowBox[{"y", "[", 
      RowBox[{"w0", ",", " ", "w1", ",", " ", "z"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"w0", ",", " ", "w1"}], "}"}], ",", " ", "z"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"ws", " ", "/.", " ", 
    RowBox[{"Rule", " ", "\[Rule]", " ", "List"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"DiscretePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", " ", 
     RowBox[{"y", "[", 
      RowBox[{
       RowBox[{"ws", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", " ", "x"}], "]"}]}], "}"}], ",", 
   " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "xVal"}], "}"}]}], "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[{{{1.7261716884980731`, 1.5055933872951284`}, {
        1.7261716884980731`, 1.5055933872951284`}}},
        VertexColors->None]}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[CompressedData["
1:eJxTTMoPSmVmYGAQAWImKM6Rn5ZjY/PLno3Plzf9xk97GD9eqkL8pdgP+3+J
0UdSe37ZP7uoYHrJ+SecD5O3PhfplLL3l311keGNzV8RfJi8/uSdYbbhv+0d
TrLw2Lkg+DD5kIOqGaor/tqrTX+am77oJ5wPk//t6fHY+ONfe59s3r5I819w
PkxeTuC+n3jzP/u/CW3l7tN+w/kweY25xg2u9//Z2zvcrvaZ9AfOh8mLr5ol
L3z0v/3hePMfiu7/4XyY/JOdH+bo2DE4hB13uqZyiMEBxofJ3/nu9UNWhNFh
xfO279H/mRxgfJh8w4WSu76bGB229Bqc5H7M7ADjw+TLmDZ/zTzK6NDWVPq6
4T2zA4wPk4/xsL7FBjQ34X9ngc01JgcYHyZ/uujUtu1Avn+drf+WK0wOMD5M
nnf/wvLjTMwOUqq6Mx+cZXKA8WHy3ZHG8dvmMDsc8s5ZI2fM6ADjw+RvPy+d
dmsrswNv49YX754xOMD4MPkl9+zmNx9hdnj5Is76xk4GBxgf7j91hVW6d5kd
3q1v+6Gfy+AA48PkAScJImE=
        "],
        VertexColors->None]}}}, 
    {RGBColor[0.6, 0.24, 0.4428931686004542], {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}}, {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[CompressedData["
1:eJw9z1sow2EcxvFtf6GklMNKzuVUJCap4X0pheLCYWtRjhO1ktOsFEqKKEUt
ZmiRpKRoEzktpyKSGzWHpTnfIP7MZnu9F37vxXPx7XP1RNY0FSs5gUAQSCf6
nypcq8rIcKCUJ3J74CYIujJYI34OsiN3dfmecsiBLhRbtf3UocGlp4qcuk0H
UmnWk2uoQ4Mnja7JMuVOFGnQZL+4CGvw00BZav2UE31d7B4uU4cGLzVHN0TP
u1CH+csr5JewBnfm59kk7y50HrXob3MS1uBhftYica8bWU94eTN1aPC4SUlP
rtWNknmPznjq0ODiBV24/z5Baen2ErWDsAa/W3vTJ2QJML73bn38IazBr74L
7KEBQqwLNVjH7YQ1eM9Z23XhshD7LMVIZ74Ja3C1aIVv3BdiNd/Z1EcdGrwi
T2rxJCJs2zC26XnCGvy45ci0SltW9lE1QR0a3Hfb0HEo4nCr8VWnpQ4NPqiQ
VJr0HB4cqRub+ySswS8f27UWI4flD3HKburQ4LM3WdO9exw2WboGGqhDs3+x
EQuJ1xweNu8E5FCHBv8DA+NJgg==
        "],
        VertexColors->None]}}}}, {
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAbB+WbDw8+j8GDk0NZ9j5P/5hW8Rl
jPo/5tEgNdJD+T87zllCZL36P3tyMdiz9fg/L5O5Vj1X+z9AyQQMPkT4P84V
VjRmnvs/Xxp4F+kW+D9UwSVoJaj9PyaX5W1novk/+0lI4zPx/T9Maw2OWTf6
Px4Q304Xg/4//WCGd0eW+z8onTOARd/+Pz9A23tMkvw/F6qaHxPF/z/DXzf4
IUf/P+S58JwsPgBAVsdC1iTCAEDc90r4HRQBQKjnhvdb/wJAgNB03U2yAUC0
jTDJC+MDQHYCs/VpxQFAhoJ164DvA0BcSDvaBv8CQGD/iXA81gJAy3LKtrf/
AkBPfj1PtNQCQA2/oXfHAgNAGiUtmeDNAkCLWTNftpwDQMJLbKweMwFA2+d1
ltq1A0ANgbXo7uYAQKTePp+DxANA6eheO9i5AEB2JyCqLd0DQO6vhvgvbQBA
nuOeEw==
      "]], {}}, {
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[{}], {}}, 
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[CompressedData["
1:eJxTTMoPSmViYGAQBWIQnSM/LcfG5pe90Yv/D4/9+2//LzH6SGrPL/vrkfuS
O4B863ORTil7f9nnVOwyTALy9SfvDLMN/22vuLDC8dXf//bnRMNM0ub9tv92
/fDxTUB+yEHVDNUVf+3LD35jl/nz3/63p8dj449/7S8prRV+/Pu/vZzAfT/x
5n/2989+DS8E8jXmGje43v9nb/iVpVoTyBdfNUte+Oh/ezOLH8Flv/7bP9n5
YY6OHYODw1OO4uc//9vf+e71Q1aE0WGW7ML7M3/8t2+4UHLXdxOjA/d6NevF
3//blzFt/pp5lNGh7Gt1fiuQH+NhfYvtP5PD4z1bS+Z8/W9/uujUtu1Afljo
54TZQD7v/oXlx5mYHYq3vp81DcjvjjSO3zaH2aF7UsqMZV/+299+Xjrt1lZm
h/BnGqn1QP6Se3bzm48wO2y7VdeZAeSXqSus0r3L7NB/8ICIE5APAF4Xt2E=

       "]], {}}}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{1.63970606247491, 1.5055933872951284`},
  Method->{"MessagesHead" -> DiscretePlot},
  PlotRange->{{1.63970606247491, 2.482997254472987}, {1.5055933872951284`, 
   2.4919451136814272`}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"xVal", " ", "=", " ", 
   RowBox[{"Part", "[", 
    RowBox[{
     RowBox[{"RandomReal", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1.5", ",", "2.5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "21"}], "}"}]}], "]"}], ",", " ", "1"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"FindFit", "[", 
    RowBox[{
     RowBox[{"f", "[", "xVal", "]"}], ",", " ", 
     RowBox[{"y", "[", 
      RowBox[{"w0", ",", " ", "w1", ",", " ", "z"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"w0", ",", " ", "w1"}], "}"}], ",", " ", "z"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"ws", " ", "/.", " ", 
    RowBox[{"Rule", " ", "\[Rule]", " ", "List"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"DiscretePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", " ", 
     RowBox[{"y", "[", 
      RowBox[{
       RowBox[{"ws", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", " ", "x"}], "]"}]}], "}"}], ",", 
   " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "xVal"}], "}"}]}], "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[{{{1.7740519054201644`, 1.5056986505581171`}, {
        1.7740519054201644`, 1.5056986505581171`}}},
        VertexColors->None]}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[CompressedData["
1:eJxTTMoPSmVmYGAQAWImKBa45X9CKOynffIflT1//v62h/GbS+6Uh4v/sPda
+eHOjv0/7VsY9v3Pf/sLzofJ97x7ebKI65f9u9OuSZccfsH5MHmebZmWQXG/
7J1n5y/QnfYTzofJq9/4/GDZlN/2/67+9NkijeDD5Hc/s7CRkPlr//rO/UdZ
+xF8mPyTuD/8Tyb9t19i7R11adU/OB8mPyc6WP/V5v/2H0LFK5oF/8P5MPlZ
LltEFD8wOExsNVT5tZ7JAcaHyXN1FQSwaDM6SM1boyqgy+wA48Pk9+1KPqJu
w+gQfXL9qeU+zA4wPky+YwYT4189JoeaN1MuJ3xldoDxYfJz/yYvta1mclDz
D4xes53ZAcaHyVdvqX+wpofJ4dzZHw5Si5gdYHyYfPYG3ZT3K5kclm6v/fal
nNkBxofJ375Y+XHOPiaHnScnN1wLZXaA8WHyF7gdt3jeZ3KYqDXl0S8JZgcY
Hya/xPKU+msWZgfvA3UrBU8yOcD4MHm7R2FClnXMDunXpwiz9jI6wPjw9JFw
d+rvZcwOd1pveRqKMDrA+DB5AHGbNRY=
        "],
        VertexColors->None]}}}, 
    {RGBColor[0.6, 0.24, 0.4428931686004542], {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}}, {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[CompressedData["
1:eJxTTMoPSmVmYGAQBWImKBa45X9CKOyn/dGdT+sqJjA4wPjNJXfKw8V/2Hut
/HBnx/6f9n4LMxXqgPIwPky+593Lk0Vcv+yn2zHJNAHlYXyYPM+2TMuguF/2
RsnpU9qA8jA+TF79xucHy6b8tm+WWC83HSgP50PlrX8ZObQk/bE3S58mvggo
D+PD5Hc/s7CRkPlrv/v3ht+rgfIwPkz+Sdwf/ieT/ts3iXTOOguUh/Fh8nOi
g/Vfbf5vLzpfIfY8UB7Gh8nPctkioviBwWGLrQzLW6A8jA+T5+oqCGDRZnSw
XyPq/RkoD+PD5PftSj6ibsPosFH2mNxXoDyMD5PvmMHE+FePyUG3Po2RfyKD
A4wPk5/7N3mpbTWTg/ZrWyVxoDyMD5Ov3lL/YE0Pk8MjB6Z/EkB5GB8mn71B
N+X9SiaHyFmVMjJAeRgfJn/7YuXHOfuYHK7mHAiQA8rD+DD5C9yOWzzvMzkU
v884owiUh/Fh8kssT6m/ZmF2EG71O68KlIfxYfJ2j8KELOuYHbjK+vcaAeVh
fHj6Sbg79fcyZofVkjdFzYHyMD5MHgDvhjBQ
        "],
        VertexColors->None]}}}}, {
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAENpPyBJW+T9j/CS8/P37P0qp8Ny4
v/k/hAC+/2/t+j+M7unJcgr6P+7LRWLSQPo/DLZpOVJe+j9Dm2+gLZb5PyfY
8+CmlPs//tX5TLQb+D87+jJAhGL8P4N03HdXF/g/u+Y4PBgc/T/r3N/iar/4
P+Re/A/kkv8/pDtLWtKq/j+cW1Mv6rP/P/BVF3iDEf8/mkS0FCHwAECRhTEk
+q8CQAqKcFAEKwFAGp6sJRAtA0C+umPEJzwBQFvJr8qnTANAiJgCAf0uAkB8
7JTTYPUDQJ39Y6U9ewJAJk9RW6y3A0B7tH/grIwCQM7N+EAaogNAa7AtZO+p
AkClt3329HcDQNvRefGcvgJAucmTgNZVA0DQC0G0Sd8CQJEqlOL6GANApDnK
J+sEA0BLwH6pEckCQD7iVhI5fgNAZ9eUEwWNAUCMYN2V+6YDQNyF2kkxFAFA
QLyjSw==
      "]], {}}, {
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[{}], {}}, 
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[CompressedData["
1:eJxTTMoPSmViYGAQBWIQLXDL/4RQ2E/7ozuf1lVMYHDwWvnhzo79P+39FmYq
1AH5Pe9enizi+mU/3Y5JpgnI59mWaRkU98veKDl9ShuQr37j84NlU37bN0us
l5sO5Fv/MnJoSfpjb5Y+TXwRkL/7mYWNhMxf+92/N/xeDeQ/ifvD/2TSf/sm
kc5ZZ4H8OdHB+q82/7cXna8Qex7In+WyRUTxA4PDFlsZlrdAPldXQQCLNqOD
/RpR789A/r5dyUfUbRgdNsoek/sK5HfMYGL8q8fkoFufxsg/kcFh7t/kpbbV
TA7ar22VxIH86i31D9b0MDk8cmD6JwHkZ2/QTXm/kskhclaljAyQf/ti5cc5
+5gcruYcCJAD8i9wO27xvM/kUPw+44wikL/E8pT6axZmB+FWv/OqQL7dozAh
yzpmB66y/r1GQH5Pwt2pv5cxO6yWvClqDuQDANM3jxY=
       "]], {}}}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{1.5835140061077517`, 1.5056986505581171`},
  Method->{"MessagesHead" -> DiscretePlot},
  PlotRange->{{1.5835140061077517`, 2.4565345485862675`}, {
   1.5056986505581171`, 2.494813588125508}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"xVal", " ", "=", " ", 
   RowBox[{"Part", "[", 
    RowBox[{
     RowBox[{"RandomReal", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1.5", ",", "2.5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "21"}], "}"}]}], "]"}], ",", " ", "1"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"FindFit", "[", 
    RowBox[{
     RowBox[{"f", "[", "xVal", "]"}], ",", " ", 
     RowBox[{"y", "[", 
      RowBox[{"w0", ",", " ", "w1", ",", " ", "z"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"w0", ",", " ", "w1"}], "}"}], ",", " ", "z"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"ws", " ", "/.", " ", 
    RowBox[{"Rule", " ", "\[Rule]", " ", "List"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"DiscretePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", " ", 
     RowBox[{"y", "[", 
      RowBox[{
       RowBox[{"ws", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", " ", "x"}], "]"}]}], "}"}], ",", 
   " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "xVal"}], "}"}]}], "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[{{{1.7448798359145448`, 1.5002587200260364`}, {
        1.7448798359145448`, 1.5002587200260364`}}},
        VertexColors->None]}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[CompressedData["
1:eJxF0Fsog3EcxvF373szOUuLnKMMkdyQw/4/0WKTIu0GF+ZQSEL0yoUklGgR
mpGcEsmFi8nxYpSLKcKcklBkTArF+842XPj9XTwXn753T4S2vrCSYxjG/3fs
32TygN6yYoHILzZbL29dBN10MJnrLRFI3YPR9NwnEGH4M2Ulx0WNvbSjvGbW
TyRP1pKbtnUHNXb17MZSLIiErzgKCk11UGOfV/pZw20iyQ0b3njttlNjn8lY
u1Rn2IkgLB8qT0Vq7IkPx9k6lZ0odycW3TZFauzSpQJLU/MXMWdbk/wT/o3d
mKV3DHQ4SBzz8lgg/zf26/TBwLdlJxnKW/hOM4rU9B/3O1WE2Um0BpVP5r1I
jd2rPyZYLf8mjTMtV9NVTmrs7y4+6d7GwLVal+Y7xwIa+97qnsbwxUBJdFWt
wswCGrtGT/i4SAnIavKNZyEcoLEHFI3Gl4WzoGydMrzbOUBj/xjbD9ttYEF7
snVGtjlAYzdpLIFSBQfjPbxLqmABjT2qvctZvcBBMjPWYvGQABo7L9N7dpo4
sI6cjwfvMIDG/gNS3Ctu
        "],
        VertexColors->None]}}}, 
    {RGBColor[0.6, 0.24, 0.4428931686004542], {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}}, {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[CompressedData["
1:eJxTTMoPSmVmYGAQBWImKBbTkOhKjP5hLx648Gj8m7/2MH7x+QWe/Iw/7HOf
bz34pueHvTGL9rdlQHkYHyYf25ictUTop71Z1mbJ9Ld/4XyYvPeS3Wu1HH7a
/+ra3bwCKA/jw+RXuAm9UHj9036lfaP2vHd/4XyY/GLbnbe9bX/Zf/RdZSPy
/i+cD5M3eH7Zpd/rl71xfqe3OlAexofJc6wNvFJc+tu+MSDo2JUPf+F8mPwe
u2w59te/7dsncu+o/fgXzofJb3We8Wdi4x/7nR5zOcI+/YXzYfL3bSZJftr4
137GXK0U7i9/4Xx4+HE/8VI89ddeMMdXRQ8oD+PD5Pl6NWW8Nf7bb399ykv1
2184Hyb/+V+F0dPXDA5d16o1GH/9hfNh8qd3nA6b9ZvBYfrWEh89oDyMD5MP
m2Ffoa3M6BC4cBrjAqA8jA+TlwiZqZuowOQwka14Xfnfv3A+TP7b7HPyxwqZ
HP4s2Ds98d9fOB8mfzDsiiSHHbPDkb6709Yw/IPzYfIq9a1/M1cyO6RcztB/
yPgPzofJV4jN4G0+yOywaaFogRrTPzgfJg8AX65Blw==
        "],
        VertexColors->None]}}}}, {
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAFigYimFb+D8o2bx52+H+P23ntcHs
jPg/+JX3OLZI/j9dgWNqpBL5P+roXOB7uvw/S6S7rSpA+T94ZNIbHjr8P6hG
Eugg6/k/SR+Vu/GG+j+jPbnbSz36P/j4sdFG1vk/MOfTRI9K+j9Gxp6rCbz5
PwitUdRzdfs/ykToMhQu+D+8PmseB+v7P3PPoEkPAfg/tUOY/JGB/D8rAO7p
USj4P988khnysf0/lEyp/zu1+T9tC+RKIcr9P2KaShBB5fk/Do0pHEso/z9y
o3bdomb9P/P+eDLl6wBA30uPOxGmAkDLuMtWmvsAQFwnZms+ygJAVpg/eCsj
AUAWak611x0DQBhUmS1hIAJARnmhmvP6A0D2m84fxnECQGLVvdc/wgNAwVbU
GQg+A0Cch3j+CD4CQCR/hf1pqQNANwCbdtQMAUB4FpgNg8EDQOiW2JwcwwBA
Y+ujOw==
      "]], {}}, {
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[{}], {}}, 
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAFigYimFb+D8XUaHFX+z9P23ntcHs
jPg/MwQr9qbs/T9dgWNqpBL5PzZqsxln7f0/S6S7rSpA+T/6iruDqO39P6hG
Eugg6/k/qT+BK57u/T+jPbnbSz36P/FNqjwU7/0/MOfTRI9K+j8zb4lLJ+/9
PwitUdRzdfs/gVBSxtTw/T+8PmseB+v7P4eRC7h98f0/tUOY/JGB/D+5SJ0I
VvL9P988khnysf0/mJ0qZAv0/T9tC+RKIcr9PxFsTSQu9P0/Do0pHEso/z+3
68pKJfb9P/P+eDLl6wBAitZ7KAH6/T/LuMtWmvsAQJe1dEwu+v0/Vpg/eCsj
AUBRoZYBoPr9PxhUmS1hIAJAkQZzrnf9/T/2m84fxnECQPygvZdh/v0/wVbU
GQg+A0DEjt2WrAD+PyR/hf1pqQNAZNNoL+EB/j94FpgNg8EDQLKhFXAmAv4/
SlmrIQ==
       "]], {}}}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{1.5223098177252772`, 1.5002587200260364`},
  Method->{"MessagesHead" -> DiscretePlot},
  PlotRange->{{1.5223098177252772`, 2.469488245204783}, {1.5002587200260364`, 
   2.4975349503066893`}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"y1", "[", 
    RowBox[{
    "w0_", ",", " ", "w1_", ",", " ", "w2_", ",", " ", "w3_", ",", " ", "w4_",
      ",", " ", "w5_", ",", " ", "w6_", ",", " ", "z_"}], "]"}], " ", "=", 
   " ", 
   RowBox[{"w0", " ", "+", " ", 
    RowBox[{"w1", " ", "*", " ", "z"}], " ", "+", " ", 
    RowBox[{"w2", " ", "*", " ", 
     RowBox[{"z", "^", "1"}]}], " ", "+", " ", 
    RowBox[{"w3", " ", "*", " ", 
     RowBox[{"z", "^", "2"}]}], " ", "+", " ", 
    RowBox[{"w4", " ", "*", " ", 
     RowBox[{"z", "^", "3"}]}], " ", "+", " ", 
    RowBox[{"w5", " ", "*", " ", 
     RowBox[{"z", "^", "4"}]}], " ", "+", " ", 
    RowBox[{"w6", " ", "*", " ", 
     RowBox[{"z", "^", "5"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"xVal", " ", "=", " ", 
   RowBox[{"Part", "[", 
    RowBox[{
     RowBox[{"RandomReal", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1.5", ",", "2.5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "21"}], "}"}]}], "]"}], ",", " ", "1"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"FindFit", "[", 
    RowBox[{
     RowBox[{"f", "[", "xVal", "]"}], ",", " ", 
     RowBox[{"y1", "[", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6", " ", ",", "z"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6"}], " ", "}"}], ",", " ", "z"}], "]"}]}],
   ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"ws", " ", "/.", " ", 
    RowBox[{"Rule", " ", "\[Rule]", " ", "List"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"DiscretePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", " ", 
     RowBox[{"y1", "[", 
      RowBox[{
       RowBox[{"ws", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "4", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "5", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "6", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "7", "]"}], "]"}], ",", "  ", "x"}], "]"}]}], "}"}], ",",
    " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "xVal"}], "}"}]}], "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[{{{1.7454381767166636`, 1.5002053746929338`}, {
        1.7454381767166636`, 1.5002053746929338`}}},
        VertexColors->None]}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[CompressedData["
1:eJxF0F0oQ3EcxvGz8x83liJlRiJXCuFKU/6/lWWSEnmZ0TKGqHlZFClvpYYM
TUia5CUsF4pQpBRuJKVwJclYTMjLjm3ncOF3dvFcfPrePfGGpkIjYRgm4m/s
/7x3WttcNkelQ3PWk2QfRT+arrWXjIeeqB9GIm0cLeEc36pyr2jsSTX2Zems
l2o+tG5rZMDYE29j9C1GH22YKeD35QFjN1uyE+RtPpoYu/H1Hhcw9vVFro5P
8VOn2/msug4Ye477AkLzedrZvfazI/OKxs50S/M8QQJdMQ6d2yV+0diFytX9
NrVAm6d0tpc9v2jsV7X1zckDAo1qMBz39vOisZdqzqlnS6BNPzelsmhBNPav
xgluOI2BUX3LZtgMA2jsGw4nr6yUQOuYKeSjjwAau049XaEclMBmlsJ+u0cA
jT186chVbWZhfFeW0XNAAC3+s3QfbLlhwVF/+tklJ4DGvhsxbnApCGi2O6ru
J1hAY4+JfppsTydgyhwrO9SxgMYelNtfFDpFoK54QRaikgAa+/ybucDySsCm
P3NZUxlAY/8FsiVApg==
        "],
        VertexColors->None]}}}, 
    {RGBColor[0.6, 0.24, 0.4428931686004542], {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}}, {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[CompressedData["
1:eJxTTMoPSmVmYGAQBWImKP79OHLKApef9pMqfkooM/+1h/Ff5N2MvM7ww/6E
6/M+8Sk/7T8UcnffZv8L58PkdVLmL2eZ+9s+4FL/zFCNv3A+TP4M4+MpAW9/
2x/nvXakX/cvnA+T13woE1+Y+sf+W+irz9Wmf+F8mHxxp4uyROkf+9VRb8ra
zP7C+TD5dUt/pv/T+2vf/aown8v5L5wPk3d/e8WBz/ef/a0rsT/Ph/2F82Hy
DPUs3j9Y/9v3O5tqP0v+C+fD5P/HrtpX6vrfPvRq+c7CjL9wPkz+RlpGgW7b
f3vlm1uqpHL/wvkw+XCPi/Y/tv23X9HAIbmo4C+cD5P/lj31Z48hg8Op+sKT
RrV/4XyY/KY1z/5ZxTI6rNk857vWqr9wPkw+2nVmjFUXo8O+du3v/Bv/wvkw
eaFlx14mFzM5aFw5OcXl6l84Hx4+y56ydd5ncgiSU93v9ewvnA+T3yUyKeml
FLOD74XrUze8/wvnw+RlpF9PLzNidlgk9V0l9/NfOB8mz+rZHMw3g9kh52vA
tBnM/+B8mPyij8UBnR+YHUI01LfvEfwH58PkAUkcWqc=
        "],
        VertexColors->None]}}}}, {
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAA++NZlKBE+T8Ei6CPyC38P8hF544X
lPk/Vvms90Fa+z8sZJ+nBJ37P0j0We2PF/g/zAHjlFDt+z/obtlZ1wD4Pynh
HF9xZfw/aptQ/r4Y+D9ziUQjGHX8PykesvbyIPg/rqX5Z/4u/T/m7ebsQdn4
P0ft1EAOTf4/en+r+rkM+z8AfwRL+AX/P6lli9GfAf0//12qvnVF/z9wmFuU
7r39P9hmaHAthv8/GWpix4GD/j9XSNE/+Lb/P2/631cMG/8/9muV+YwxAECQ
X3G1EZsAQLKs5v46XQFAcpFuC/SCA0BbRZlcOooBQLU+Gp/hvQNAEqbG6WNz
AkCSugw4gMADQEem5QaJ3wJArGjN9XwYA0C6FJJi6RoDQEi4eWHllQJAHBvr
l3YyA0BuO5FYw1sCQAVJg1MOmANAZ1WkDAtBAUCi8XNQifADQJRfz+mPMABA
MrKjog==
      "]], {}}, {
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[{}], {}}, 
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAA++NZlKBE+T+SePkYIwP9P8hF544X
lPk/8HELi9sH/T8sZJ+nBJ37P1DSj5lVKP0/zAHjlFDt+z/HDdbEjy39Pynh
HF9xZfw/9lXq83s1/T9ziUQjGHX8P6ta7HaGNv0/rqX5Z/4u/T+L6nFvCkP9
P0ft1EAOTf4/2tRd+c9W/T8AfwRL+AX/P49DNSvmY/0//12qvnVF/z9V1Xe5
cWj9P9hmaHAthv8/I9m0ehpt/T9XSNE/+Lb/P6iACBmicP0/9muV+YwxAEDK
f3HJMn39P7Ks5v46XQFArLOc9yqq/T9bRZlcOooBQL6HK/cPsf0/EqbG6WNz
AkAo1MmURNX9P0em5QaJ3wJAUh4lv0rm/T+6FJJi6RoDQE3Q15Ww7/0/HBvr
l3YyA0CiGvckbfP9PwVJg1MOmANAbPVQlpgD/j+i8XNQifADQFQoJ7e8Ef4/
9tyrAA==
       "]], {}}}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{1.5792547030416688`, 1.5002053746929338`},
  Method->{"MessagesHead" -> DiscretePlot},
  PlotRange->{{1.5792547030416688`, 2.492449406183554}, {1.5002053746929338`, 
   2.46899455822797}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"y1", "[", 
    RowBox[{
    "w0_", ",", " ", "w1_", ",", " ", "w2_", ",", " ", "w3_", ",", " ", "w4_",
      ",", " ", "w5_", ",", " ", "w6_", ",", " ", "z_"}], "]"}], " ", "=", 
   " ", 
   RowBox[{"w0", " ", "+", " ", 
    RowBox[{"w1", " ", "*", " ", "z"}], " ", "+", " ", 
    RowBox[{"w2", " ", "*", " ", 
     RowBox[{"z", "^", "1"}]}], " ", "+", " ", 
    RowBox[{"w3", " ", "*", " ", 
     RowBox[{"z", "^", "2"}]}], " ", "+", " ", 
    RowBox[{"w4", " ", "*", " ", 
     RowBox[{"z", "^", "3"}]}], " ", "+", " ", 
    RowBox[{"w5", " ", "*", " ", 
     RowBox[{"z", "^", "4"}]}], " ", "+", " ", 
    RowBox[{"w6", " ", "*", " ", 
     RowBox[{"z", "^", "5"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"xVal", " ", "=", " ", 
   RowBox[{"Part", "[", 
    RowBox[{
     RowBox[{"RandomReal", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1.5", ",", "2.5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "21"}], "}"}]}], "]"}], ",", " ", "1"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"FindFit", "[", 
    RowBox[{
     RowBox[{"f", "[", "xVal", "]"}], ",", " ", 
     RowBox[{"y1", "[", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6", " ", ",", "z"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6"}], " ", "}"}], ",", " ", "z"}], "]"}]}],
   ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"ws", " ", "/.", " ", 
    RowBox[{"Rule", " ", "\[Rule]", " ", "List"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"DiscretePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", " ", 
     RowBox[{"y1", "[", 
      RowBox[{
       RowBox[{"ws", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "4", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "5", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "6", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "7", "]"}], "]"}], ",", "  ", "x"}], "]"}]}], "}"}], ",",
    " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "xVal"}], "}"}]}], "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[{{{1.782090751565073, 1.5101294916560446`}, {1.782090751565073,
         1.5101294916560446`}}},
        VertexColors->None]}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[CompressedData["
1:eJxNz08og3Ecx/HfnocDJkRaSm2R/6HlX6TfV44USVqI/DvtsPzL/7n4Uwsn
46CEUPI8yw5s/h1kxNJyQRwsKZHmQJbZnufh4PvM4XN49T59NK2Gmg6WEBL3
O+ZvqaEvHtH5RZtU3dsTUwJFj+btmEbSv2iVNo3jq320RFPn2lIGZGMfKti9
9eh9VPPYzqcc+2VjX0lmuNjXb2r0PvlCdoLGrq50Rquy/NR+oFOBPmjshWZj
Zdqwny5MLz4c/jP2M96sNrACjdjusyiXgsbeOG5Vdc6KdF802pMcftnYPRf5
RYFsiWoVe9bpQUE29nr7UWCwVKJ3iYtlnjVBNnYdJ34rQaK28FJY5wXZ2C9O
rgrKBiTqyGoyWBtE2dhnLocr1LkEmHfufnWOABr76X1FzlsdgeKYT5s7UgFo
7B9nCZnLOgLPbgsJjVUAGrtJ27/R1sXArF6ZNHfEAhr7fOdkVO0YAwthiayD
YwGNveZGWH03M9DidLlMZhbQ8v+oeO+1nQGL2FNua2YBjT2Df+m1bLGQf74p
7XsJoLH/AHE5NQY=
        "],
        VertexColors->None]}}}, 
    {RGBColor[0.6, 0.24, 0.4428931686004542], {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}}, {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[CompressedData["
1:eJxTTMoPSmVmYGAQBWImKFZnffn236kf9hys1xwbXRgdYPx6k21dtZo/7P2N
NNasDfhpb/9WTmKZFKMDjA+TrzbbefNt9k97BhbLKlshRgcYHya/SIVpjfDr
X/bTn1zMjl3A4ADjw+QVfE4JSOj8tuc7OG3/1V4GBxgfJm8+tc5Ho+a3fdRT
zkfB5QwOMD5M/tnc9umFzX/s5c8JSW7WZ3CA8WHyJ9ZOVchn/mvPcMjXVI+P
wQHGh8nHtG6UKJzyz/7oidPxvKH/4XyY/NszphZ/9P7bT+JgLqzm+Q/nw+Sj
dhz8U2X73/7Vqm9Bp1n/w/kw+Yg1/37xOPy331e70HUOy384HyZ/5uhVM8fK
//bLVyTOyH31D86HyfddqPFWMGBw+Kp0X/Zu8z84HyZ/7J63/rswBgejT289
2pP+wfkw+c8npLQXRjA4rNql+0Ak8R+cD5PvMqpYmVzE5LDC75fAqVN/4HyY
/PTCdv6QFiaHjzGzEz7s+wPnw+SDrv9d8mkqk4PFAvFfaZv/wPlw//OLfbu2
g8nhz1yTDbfm/IHzYfJaa1+WrtvA7DD/vs7Wa+x/4HyYPADYcUMW
        "],
        VertexColors->None]}}}}, {
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAJwXp7f7K+D9eGHO1hoz9P08yKKyt
UPk/OyFWzrAM/D97NrnZ7Wv5PyHjZK0mw/s/oiQCrBPr+j9+9ub5BLb4PyBM
yhAYLPs/uLxYGEBr+D83lX5MKHz7P5uNnuG9Kfg/5p2Hl3GD/D9/NLaKfSn4
P8itlSBvA/0/C7V3rgyg+D9chbEYcZT+P7v+frgjxPs/7cw1OPwu/z8yAbqx
jXr9P1q4wfx6Pf8/2h2eQe2l/T9YrP76DED/P7cKPUCmrf0/zMXVNkF5/z/E
LF5vsVv+P47QfEsgMABAAvKs3qSWAEDG3ksv7lYAQDoR9bffDQFA88gaK6FY
AEDo364ABRMBQIoyeKljcgJAlGsMI5bBA0CXcYcPVIQCQJsJHQPErANAUtf9
pPKVAkBhys7OipUDQFgPFvbWuAJArv50Q7dfA0Aqrel1rrADQDXJq/+79gBA
wpyk/A==
      "]], {}}, {
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[{}], {}}, 
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAJwXp7f7K+D8IBdZBgUQBQE8yKKyt
UPk/P+0eGKYaAUB7NrnZ7Wv5PwAEOXo9EgFAoiQCrBPr+j+X5NFrXaAAQCBM
yhAYLPs/DsGWv9WNAEA3lX5MKHz7P1rlCeJTdwBA5p2Hl3GD/D8fzhIZsy8A
QMitlSBvA/0/AMJNNS4OAEBchbEYcZT+P8XIy18NVf8/7cw1OPwu/z+SCANx
ewz/P1q4wfx6Pf8/6qr2UssF/z9YrP76DED/P759oUWcBP8/zMXVNkF5/z+n
qGGYber+P47QfEsgMABA9SLfHd2D/j/G3ksv7lYAQDLy7UiHYv4/88gaK6FY
AECqui3gFGH+P4oyeKljcgJAqE76EMrK/D+XcYcPVIQCQPFcm2Dwvvw/Utf9
pPKVAkA4oBf6ZrP8P1gPFvbWuAJA/J00sNqc/D8qrel1rrADQJ/fLLXWB/w/
1GChyw==
       "]], {}}}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{1.549559525811057, 1.5101294916560446`},
  Method->{"MessagesHead" -> DiscretePlot},
  PlotRange->{{1.549559525811057, 2.461270257180918}, {1.5101294916560446`, 
   2.469524644676719}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"y1", "[", 
    RowBox[{
    "w0_", ",", " ", "w1_", ",", " ", "w2_", ",", " ", "w3_", ",", " ", "w4_",
      ",", " ", "w5_", ",", " ", "w6_", ",", " ", "z_"}], "]"}], " ", "=", 
   " ", 
   RowBox[{"w0", " ", "+", " ", 
    RowBox[{"w1", " ", "*", " ", "z"}], " ", "+", " ", 
    RowBox[{"w2", " ", "*", " ", 
     RowBox[{"z", "^", "1"}]}], " ", "+", " ", 
    RowBox[{"w3", " ", "*", " ", 
     RowBox[{"z", "^", "2"}]}], " ", "+", " ", 
    RowBox[{"w4", " ", "*", " ", 
     RowBox[{"z", "^", "3"}]}], " ", "+", " ", 
    RowBox[{"w5", " ", "*", " ", 
     RowBox[{"z", "^", "4"}]}], " ", "+", " ", 
    RowBox[{"w6", " ", "*", " ", 
     RowBox[{"z", "^", "5"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"xVal", " ", "=", " ", 
   RowBox[{"Part", "[", 
    RowBox[{
     RowBox[{"RandomReal", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1.5", ",", "2.5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "21"}], "}"}]}], "]"}], ",", " ", "1"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"FindFit", "[", 
    RowBox[{
     RowBox[{"f", "[", "xVal", "]"}], ",", " ", 
     RowBox[{"y1", "[", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6", " ", ",", "z"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6"}], " ", "}"}], ",", " ", "z"}], "]"}]}],
   ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"ws", " ", "/.", " ", 
    RowBox[{"Rule", " ", "\[Rule]", " ", "List"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"DiscretePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", " ", 
     RowBox[{"y1", "[", 
      RowBox[{
       RowBox[{"ws", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "4", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "5", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "6", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "7", "]"}], "]"}], ",", "  ", "x"}], "]"}]}], "}"}], ",",
    " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "xVal"}], "}"}]}], "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[{{{1.7737971217254995`, 1.5055787813596464`}, {
        1.7737971217254995`, 1.5055787813596464`}}},
        VertexColors->None]}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[CompressedData["
1:eJxF0UkohGEcx/H3fR7rYcauRKJsRWRrJsXzF+YkRAxhaLKM0swYKQ0OksiS
i4iaQpOQg7KFcpAmoUgo4YKGkINlMkvvcPB/HX6HT9/jL1qtK22kHMcF/478
jV+JSB9Js7OsxasTSb2LoT1vNi1Xod9Mr8zpmnbb2b5V69qqdIjGnnvcrJS/
Olgvr7cMrf0b+91jdGZVspPFFn0SruXf2GVdz/5xKoEpLg5rlDKnaOwHhg7Z
pYebBSrCvcoEl2jsAasmg7PNzSaeJJfVBYJo7HuWjPXrMTcLaw1p0s4KorG3
r5iz3t45yLOuqjo3CKCx60wv5hwPHqSawre2WwJo7D4T8+m6cB5Gl+LP1VIK
aOxzp9nHnQYeEhvs/Y4ZCmjs3/fGTDLJQ2Co7235EQU09vEvY/ZULIH7rYSn
VDsFNHZ545ktxURAGhUfJB+mgMausfrXDe4SqN6PTHKUU0BjX1oQtMtAYdsm
WY6REUCL/6q7VfpiCpKemoMPPwJo7FXe1xUPv9b0VRh3pATQ2D+ND7W2AQol
ivwxs54HNPYfv5YxFQ==
        "],
        VertexColors->None]}}}, 
    {RGBColor[0.6, 0.24, 0.4428931686004542], {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}}, {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[CompressedData["
1:eJw90U9I03EcxvHP9zdF6bSSGaiXHQyRMnCKU3TfT2eNRvmnn+DEwTRBnE7M
OSMYCAvUupTi2CxkjCFJiminPBQNwQUZNhANxH/BDIUwdSr+2qGnw3N48T4+
RrvzvkNHRIbUlH8TM3mm4eKkTBRENmMdguH0jffRtexT2dVgGfBrSWnf/2zo
rBUMo9+JtTWYf53JOS0Rny8XDKNv/TSWqkXnMmuh4Lm3WDCM7o+Zr/e3XMgP
eysrg9cEw+hlAwn9DdulrKnzu99tEcPoS67esniaJuMZ9ZbGVWIY/epc0HXe
rcmDGlvAukwMo3+Mlsyvv9DkLaupY3uJGEbvmQlVHPwmfvPFEegLEMPozuB+
yJIm+IHph2r0E8PomaNhkzNXsLo7lXNljBhGn/xaFXO7BEfDedPfh4hh9NNt
T6kyJvhuUU7Y6iOG0V/+8VSN5yscmgg3zz4mhtHNjm/Ht4MKLxZ+8p60E8Po
j/b0zc8WFa5s8qqBVmIYfSpy2fmWdex7HWmtbiSG//9vf2LruqfjXMOIJ/mQ
GEZXM9brd1KeTo7cPEx1GP3Is9N07NPx08FXbn0tMYz+F3glPzg=
        "],
        VertexColors->None]}}}}, {
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAAbAcM4wy+T86qdnPDWD8P3BXPnua
//k/xOZu/LlY+j9BzGdXOOz6P4EBcMaKtPg/4uchNVku+z8lTvQCAGn4P5rM
OBd5Yfw/Bdy3xtkW+D83e+oQJl7+P0bVylxXN/s/yHJ1N9YE/z8SRhsGU/78
PxGznXL7cf8/lugN1ltF/j/CxjS124//PxlsFWZuof4/c7CkOu7yAEBD5rNe
eLYCQG+d66Q+BAFADmhM7nHdAkAIlqYzbxsBQI2qJ9RiDgNAotA9zHhyAUAr
ZPmF+qADQPjjejUClwFAEhYJ3VXLA0CU9Xo9mSUCQOO5KOgx+QNAOGXS9i+d
AkAOICcTOIsDQGjmEF+IvgJAW8QeLPpVA0CqqP5urEADQLr2DawkNwJAQWJ8
XnBPA0ANfVzI8w8CQFkH21bkTwNAaINWersOAkD0euRd9ocDQFBGRI+kcAFA
VIaWTQ==
      "]], {}}, {
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[{}], {}}, 
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAAbAcM4wy+T/qKKjgzGwBQHBXPnua
//k/YuvFFW5UAUBBzGdXOOz6P7P/6ta1OQFA4uchNVku+z8TtiiOgTIBQJrM
OBd5Yfw/vebR0YQSAUA3e+oQJl7+P0xVmniv4gBAyHJ1N9YE/z/WB1Y+WtQA
QBGznXL7cf8/7kxenFDLAEDCxjS124//Py1QM2zjyABAc7CkOu7yAECgzWWc
d5wAQG+d66Q+BAFAUzPdWSGaAEAIlqYzbxsBQFnlqhoKlwBAotA9zHhyAUDG
phyt1YsAQPjjejUClwFATS4aplCHAECU9Xo9mSUCQKSepl+xdgBAOGXS9i+d
AkC+KsOB92kAQGjmEF+IvgJAPF2BWZxmAECqqP5urEADQIefqGZLWgBAQWJ8
XnBPA0AbFY16+VgAQFkH21bkTwNArfmNLO9YAED0euRd9ocDQH6ElXgQVABA
+VST0w==
       "]], {}}}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{1.5748407360615604`, 1.5055787813596464`},
  Method->{"MessagesHead" -> DiscretePlot},
  PlotRange->{{1.5748407360615604`, 2.441387876067319}, {1.5055787813596464`, 
   2.4966772210529924`}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"y2", "[", 
    RowBox[{
    "w0_", ",", " ", "w1_", ",", " ", "w2_", ",", " ", "w3_", ",", " ", "w4_",
      ",", " ", "w5_", ",", " ", "w6_", ",", "w7_", ",", " ", "w8_", ",", " ",
      "w9_", ",", " ", "w10_", ",", " ", "w11_", ",", " ", "w12_", ",", " ", 
     "w13_", ",", " ", "w14_", ",", " ", "w15_", ",", " ", "w16_", ",", " ", 
     "w17_", ",", " ", "w18_", ",", " ", "w19_", ",", " ", "w20_", ",", "  ", 
     "z_"}], "]"}], " ", "=", " ", 
   RowBox[{"w0", " ", "+", " ", 
    RowBox[{"w1", " ", "*", " ", 
     RowBox[{"z", "^", "1"}]}], " ", "+", "  ", 
    RowBox[{"w2", " ", "*", " ", 
     RowBox[{"z", "^", "2"}]}], " ", "+", " ", 
    RowBox[{"w3", " ", "*", " ", 
     RowBox[{"z", "^", "3"}]}], " ", "+", " ", 
    RowBox[{"w4", " ", "*", " ", 
     RowBox[{"z", "^", "4"}]}], " ", "+", " ", 
    RowBox[{"w5", " ", "*", " ", 
     RowBox[{"z", "^", "5"}]}], " ", "+", " ", 
    RowBox[{"w6", " ", "*", " ", 
     RowBox[{"z", "^", "6"}]}], " ", "+", " ", 
    RowBox[{"w7", " ", "*", " ", 
     RowBox[{"z", "^", "7"}]}], " ", "+", " ", 
    RowBox[{"w8", " ", "*", " ", 
     RowBox[{"z", "^", "8"}]}], " ", "+", " ", 
    RowBox[{"w9", " ", "*", " ", 
     RowBox[{"z", "^", "9"}]}], " ", "+", " ", 
    RowBox[{"w10", " ", "*", " ", 
     RowBox[{"z", "^", "10"}]}], " ", "+", " ", 
    RowBox[{"w11", " ", "*", " ", 
     RowBox[{"z", "^", "11"}]}], " ", "+", " ", 
    RowBox[{"w12", " ", "*", " ", 
     RowBox[{"z", "^", "12"}]}], " ", "+", " ", 
    RowBox[{"w13", " ", "*", " ", 
     RowBox[{"z", "^", "13"}]}], " ", "+", " ", 
    RowBox[{"w14", " ", "*", " ", 
     RowBox[{"z", "^", "14"}]}], " ", "+", " ", 
    RowBox[{"w15", " ", "*", " ", 
     RowBox[{"z", "^", "15"}]}], " ", "+", " ", 
    RowBox[{"w16", " ", "*", " ", 
     RowBox[{"z", "^", "16"}]}], " ", "+", " ", 
    RowBox[{"w17", " ", "*", " ", 
     RowBox[{"z", "^", "17"}]}], " ", "+", " ", 
    RowBox[{"w18", " ", "*", " ", 
     RowBox[{"z", "^", "18"}]}], " ", "+", " ", 
    RowBox[{"w19", " ", "*", " ", 
     RowBox[{"z", "^", "19"}]}], " ", "+", " ", 
    RowBox[{"w20", " ", "*", " ", 
     RowBox[{"z", "^", "20"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"xVal", " ", "=", " ", 
   RowBox[{"Part", "[", 
    RowBox[{
     RowBox[{"RandomReal", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1.5", ",", "2.5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "21"}], "}"}]}], "]"}], ",", " ", "1"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"FindFit", "[", 
    RowBox[{
     RowBox[{"f", "[", "xVal", "]"}], ",", " ", 
     RowBox[{"y2", "[", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6", " ", ",", " ", "w7", ",", " ", "w8", 
       ",", " ", "w9", ",", " ", "w10", ",", " ", "w11", ",", " ", "w12", ",",
        " ", "w13", " ", ",", " ", "w14", ",", " ", "w15", ",", " ", "w16", 
       ",", " ", "w17", ",", " ", "w18", ",", " ", "w19", ",", " ", "w20", 
       " ", ",", "z"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6", " ", ",", " ", "w7", ",", " ", "w8", 
       ",", " ", "w9", ",", " ", "w10", ",", " ", "w11", ",", " ", "w12", ",",
        " ", "w13", " ", ",", " ", "w14", ",", " ", "w15", ",", " ", "w16", 
       ",", " ", "w17", ",", " ", "w18", ",", " ", "w19", ",", " ", "w20"}], 
      " ", "}"}], ",", " ", "z"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"ws", " ", "/.", " ", 
    RowBox[{"Rule", " ", "\[Rule]", " ", "List"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"DiscretePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", " ", 
     RowBox[{"y2", "[", 
      RowBox[{
       RowBox[{"ws", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "4", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "5", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "6", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "7", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "8", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "9", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "10", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "11", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "12", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "13", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "14", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "15", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "16", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "17", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "18", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "19", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "20", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "21", "]"}], "]"}], ",", "  ", "x"}], "]"}]}], "}"}], 
   ",", " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "xVal"}], "}"}]}], "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[{{{1.5603718864299427`, 1.8148519546778634`}, {
          1.5603718864299427`, 0}}, {{1.5691616677609297`, 
          1.7894963381159805`}, {1.5691616677609297`, 0}}, {{
          1.5816219136576073`, 1.7546706218315447`}, {
          1.5816219136576073`, 0}}, {{1.601440955254795, 
          1.7024571346196427`}, {1.601440955254795, 0}}, {{
          1.6819617320344993`, 1.544996845021139}, {
          1.6819617320344993`, 0}}, {{1.719179854114582, 1.509345693582147}, {
          1.719179854114582, 0}}, {{1.8476957094303916`, 1.59127898631304}, {
          1.8476957094303916`, 0}}, {{1.8804378134636224`, 
          1.6587303872618127`}, {1.8804378134636224`, 0}}, {{
          1.960745343181442, 1.8779244117764138`}, {1.960745343181442, 0}}, {{
          1.9980506254784498`, 1.9938760124471893`}, {
          1.9980506254784498`, 0}}, {{2.0213972751875984`, 
          2.0670192013909108`}, {2.0213972751875984`, 0}}, {{
          2.0402534337732003`, 2.125115957651979}, {
          2.0402534337732003`, 0}}, {{2.040616767161147, 2.126220762137025}, {
          2.040616767161147, 0}}, {{2.1551964952432017`, 2.4138869504471}, {
          2.1551964952432017`, 0}}, {{2.176400987704297, 2.447484139285972}, {
          2.176400987704297, 0}}, {{2.1896946738778187`, 2.464534278824638}, {
          2.1896946738778187`, 0}}, {{2.191237262411404, 
          2.4663050717585215`}, {2.191237262411404, 0}}, {{
          2.1929420945925466`, 2.4682111448602297`}, {
          2.1929420945925466`, 0}}, {{2.2974849768506003`, 
          2.477910382978352}, {2.2974849768506003`, 0}}, {{2.29867407369207, 
          2.4767989576169502`}, {2.29867407369207, 0}}, {{2.4370651680589113`,
           2.1926030798126863`}, {2.4370651680589113`, 0}}},
        VertexColors->None]}}}, 
    {RGBColor[0.6, 0.24, 0.4428931686004542], {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}}, {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[{{{1.5603718864299427`, 13.187675156979006`}, {
          1.5603718864299427`, 0}}, {{1.5691616677609297`, 
          12.907423459259839`}, {1.5691616677609297`, 0}}, {{
          1.5816219136576073`, 12.509338201185138`}, {
          1.5816219136576073`, 0}}, {{1.601440955254795, 
          11.876112867676431`}, {1.601440955254795, 0}}, {{
          1.6819617320344993`, 9.359722121118788}, {
          1.6819617320344993`, 0}}, {{1.719179854114582, 8.257719578374868}, {
          1.719179854114582, 0}}, {{1.8476957094303916`, 4.926186731663047}, {
          1.8476957094303916`, 0}}, {{1.8804378134636224`, 
          4.214877219405754}, {1.8804378134636224`, 0}}, {{1.960745343181442, 
          2.724156104215666}, {1.960745343181442, 0}}, {{1.9980506254784498`, 
          2.154018663075025}, {1.9980506254784498`, 0}}, {{
          2.0213972751875984`, 1.835779659352715}, {
          2.0213972751875984`, 0}}, {{2.0402534337732003`, 
          1.5999414718849543`}, {2.0402534337732003`, 0}}, {{
          2.040616767161147, 1.5955804771187567`}, {2.040616767161147, 0}}, {{
          2.1551964952432017`, 0.5467504779429844}, {
          2.1551964952432017`, 0}}, {{2.176400987704297, 
          0.4191226781386414}, {2.176400987704297, 0}}, {{2.1896946738778187`,
           0.3487644405786249}, {2.1896946738778187`, 0}}, {{
          2.191237262411404, 0.3410699780088026}, {2.191237262411404, 0}}, {{
          2.1929420945925466`, 0.33267855572431715`}, {
          2.1929420945925466`, 0}}, {{2.2974849768506003`, 
          0.025464532131686993`}, {2.2974849768506003`, 0}}, {{
          2.29867407369207, 0.024112069156273966`}, {2.29867407369207, 0}}, {{
          2.4370651680589113`, 0.12434712775021209`}, {
          2.4370651680589113`, 0}}},
        VertexColors->None]}}}}, {
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAA6Afdgkj3+D8CxQY0ogn9P1240kNJ
G/k/fVGI6cah/D/jvZzHUk75P6VLgIAhE/w/orUUjYCf+T8hiECxQz37PxVj
g7RQ6fo/op+cnE64+D+v0xW8woH7PzyzhKtHJvg/qGhPYCmQ/T+0bFD04HX5
P+DO7/VFFv4/Arzi3yiK+j85+kuCNl//PycJz3f6C/4/perC7gP4/z9E1ZuI
6ub/P+Y7qVXSKwBAi2zxXEGJAEBc3GxkcFIAQHKVkss8AAFA0AI14i5TAEBD
o+sHgAIBQN0v/KjXPQFAr0oj9qNPA0BeYMnrRGkBQBeyfZBylANAtD4kpH6E
AUDTYXu/XbcDQByr3manhwFAVUtJJ/66A0CyX5I5JYsBQBZhFnzlvgNARv+0
zT9hAkCjfMqtwtIDQEFdlTuvYwJAgdrN+HvQA0AoRdgFHH8DQCQ8x3tzigFA
Zw+fFw==
      "]], {}}, {
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[{}], {}}, 
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAA6Afdgkj3+D81/kr1FmAqQF240kNJ
G/k/1EnCzpnQKUDjvZzHUk75PyRjCfrHBClAorUUjYCf+T/TjKTdkcAnQBVj
g7RQ6fo/tbRzfy24IkCv0xW8woH7P2RREdLzgyBAqGhPYCmQ/T977WlLarQT
QODO7/VFFv4/NQMYxgjcEEA5+kuCNl//P8BwBlsSywVAperC7gP4/z8IDAcj
bjsBQOY7qVXSKwBAl0/5fVpf/T9c3GxkcFIAQOMolDpcmfk/0AI14i5TAEA3
x/Vkf4f5P90v/KjXPQFAssy62/p+4T9eYMnrRGkBQHeD5+zn0to/tD4kpH6E
AUBav5IWKFLWPxyr3manhwFA635MLBfU1T+yX5I5JYsBQDanOv+aStU/Rv+0
zT9hAkBkqdrSXxOaP0FdlTuvYwJAxD/ckdWwmD8oRdgFHH8DQOrnCZ821b8/
t3mhiw==
       "]], {}}}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{1.5603718864299427`, 0},
  Method->{"MessagesHead" -> DiscretePlot},
  PlotRange->{{1.5603718864299427`, 2.4370651680589113`}, {
    0, 13.187675156979006`}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"y2", "[", 
    RowBox[{
    "w0_", ",", " ", "w1_", ",", " ", "w2_", ",", " ", "w3_", ",", " ", "w4_",
      ",", " ", "w5_", ",", " ", "w6_", ",", "w7_", ",", " ", "w8_", ",", " ",
      "w9_", ",", " ", "w10_", ",", " ", "w11_", ",", " ", "w12_", ",", " ", 
     "w13_", ",", " ", "w14_", ",", " ", "w15_", ",", " ", "w16_", ",", " ", 
     "w17_", ",", " ", "w18_", ",", " ", "w19_", ",", " ", "w20_", ",", "  ", 
     "z_"}], "]"}], " ", "=", " ", 
   RowBox[{"w0", " ", "+", " ", 
    RowBox[{"w1", " ", "*", " ", 
     RowBox[{"z", "^", "1"}]}], " ", "+", "  ", 
    RowBox[{"w2", " ", "*", " ", 
     RowBox[{"z", "^", "2"}]}], " ", "+", " ", 
    RowBox[{"w3", " ", "*", " ", 
     RowBox[{"z", "^", "3"}]}], " ", "+", " ", 
    RowBox[{"w4", " ", "*", " ", 
     RowBox[{"z", "^", "4"}]}], " ", "+", " ", 
    RowBox[{"w5", " ", "*", " ", 
     RowBox[{"z", "^", "5"}]}], " ", "+", " ", 
    RowBox[{"w6", " ", "*", " ", 
     RowBox[{"z", "^", "6"}]}], " ", "+", " ", 
    RowBox[{"w7", " ", "*", " ", 
     RowBox[{"z", "^", "7"}]}], " ", "+", " ", 
    RowBox[{"w8", " ", "*", " ", 
     RowBox[{"z", "^", "8"}]}], " ", "+", " ", 
    RowBox[{"w9", " ", "*", " ", 
     RowBox[{"z", "^", "9"}]}], " ", "+", " ", 
    RowBox[{"w10", " ", "*", " ", 
     RowBox[{"z", "^", "10"}]}], " ", "+", " ", 
    RowBox[{"w11", " ", "*", " ", 
     RowBox[{"z", "^", "11"}]}], " ", "+", " ", 
    RowBox[{"w12", " ", "*", " ", 
     RowBox[{"z", "^", "12"}]}], " ", "+", " ", 
    RowBox[{"w13", " ", "*", " ", 
     RowBox[{"z", "^", "13"}]}], " ", "+", " ", 
    RowBox[{"w14", " ", "*", " ", 
     RowBox[{"z", "^", "14"}]}], " ", "+", " ", 
    RowBox[{"w15", " ", "*", " ", 
     RowBox[{"z", "^", "15"}]}], " ", "+", " ", 
    RowBox[{"w16", " ", "*", " ", 
     RowBox[{"z", "^", "16"}]}], " ", "+", " ", 
    RowBox[{"w17", " ", "*", " ", 
     RowBox[{"z", "^", "17"}]}], " ", "+", " ", 
    RowBox[{"w18", " ", "*", " ", 
     RowBox[{"z", "^", "18"}]}], " ", "+", " ", 
    RowBox[{"w19", " ", "*", " ", 
     RowBox[{"z", "^", "19"}]}], " ", "+", " ", 
    RowBox[{"w20", " ", "*", " ", 
     RowBox[{"z", "^", "20"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"xVal", " ", "=", " ", 
   RowBox[{"Part", "[", 
    RowBox[{
     RowBox[{"RandomReal", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1.5", ",", "2.5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "21"}], "}"}]}], "]"}], ",", " ", "1"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"FindFit", "[", 
    RowBox[{
     RowBox[{"f", "[", "xVal", "]"}], ",", " ", 
     RowBox[{"y2", "[", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6", " ", ",", " ", "w7", ",", " ", "w8", 
       ",", " ", "w9", ",", " ", "w10", ",", " ", "w11", ",", " ", "w12", ",",
        " ", "w13", " ", ",", " ", "w14", ",", " ", "w15", ",", " ", "w16", 
       ",", " ", "w17", ",", " ", "w18", ",", " ", "w19", ",", " ", "w20", 
       " ", ",", "z"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6", " ", ",", " ", "w7", ",", " ", "w8", 
       ",", " ", "w9", ",", " ", "w10", ",", " ", "w11", ",", " ", "w12", ",",
        " ", "w13", " ", ",", " ", "w14", ",", " ", "w15", ",", " ", "w16", 
       ",", " ", "w17", ",", " ", "w18", ",", " ", "w19", ",", " ", "w20"}], 
      " ", "}"}], ",", " ", "z"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"ws", " ", "/.", " ", 
    RowBox[{"Rule", " ", "\[Rule]", " ", "List"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"DiscretePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", " ", 
     RowBox[{"y2", "[", 
      RowBox[{
       RowBox[{"ws", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "4", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "5", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "6", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "7", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "8", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "9", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "10", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "11", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "12", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "13", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "14", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "15", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "16", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "17", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "18", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "19", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "20", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "21", "]"}], "]"}], ",", "  ", "x"}], "]"}]}], "}"}], 
   ",", " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "xVal"}], "}"}]}], "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[{{{1.501943906966425, 1.993893187993392}, {
          1.501943906966425, 0}}, {{1.5822318014766967`, 
          1.7530029004744205`}, {1.5822318014766967`, 0}}, {{
          1.5834342111469717`, 1.7497255920652033`}, {
          1.5834342111469717`, 0}}, {{1.5894875968038018`, 
          1.733447155776171}, {1.5894875968038018`, 0}}, {{
          1.6068815421116307`, 1.688897359929261}, {
          1.6068815421116307`, 0}}, {{1.6395875064191097`, 
          1.6155707009633813`}, {1.6395875064191097`, 0}}, {{
          1.6890511832722706`, 1.5362173157979537`}, {
          1.6890511832722706`, 0}}, {{1.695742911044129, 1.528774155030314}, {
          1.695742911044129, 0}}, {{1.840765028137552, 1.5791287191761174`}, {
          1.840765028137552, 0}}, {{1.8739881290140903`, 
          1.6442059578960682`}, {1.8739881290140903`, 0}}, {{
          1.9241541124690746`, 1.7706401762522215`}, {
          1.9241541124690746`, 0}}, {{2.05068955492569, 
          2.1565673149572806`}, {2.05068955492569, 0}}, {{2.139980812086991, 
          2.385218194283404}, {2.139980812086991, 0}}, {{2.2242753819205343`, 
          2.4934829370978506`}, {2.2242753819205343`, 0}}, {{
          2.2284605946292704`, 2.4954280213799658`}, {
          2.2284605946292704`, 0}}, {{2.2907121425242636`, 
          2.483730349975608}, {2.2907121425242636`, 0}}, {{2.291209019869938, 
          2.4833330304178243`}, {2.291209019869938, 0}}, {{
          2.3442979929782473`, 2.414775890286022}, {
          2.3442979929782473`, 0}}, {{2.391413544939685, 
          2.3152777879452056`}, {2.391413544939685, 0}}, {{2.482093985975581, 
          2.0561348033248987`}, {2.482093985975581, 0}}, {{2.486240649040094, 
          2.043172450166621}, {2.486240649040094, 0}}},
        VertexColors->None]}}}, 
    {RGBColor[0.6, 0.24, 0.4428931686004542], {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}}, {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[{{{1.501943906966425, -4.766951955396937}, {
          1.501943906966425, 0}}, {{
          1.5822318014766967`, -3.6912060790600276`}, {
          1.5822318014766967`, 0}}, {{
          1.5834342111469717`, -3.6742180962947857`}, {
          1.5834342111469717`, 0}}, {{
          1.5894875968038018`, -3.5884377852603944`}, {
          1.5894875968038018`, 0}}, {{
          1.6068815421116307`, -3.3398977456746284`}, {
          1.6068815421116307`, 0}}, {{
          1.6395875064191097`, -2.8671054919069348`}, {
          1.6395875064191097`, 0}}, {{
          1.6890511832722706`, -2.149618603829633}, {
          1.6890511832722706`, 0}}, {{
          1.695742911044129, -2.0531456785777973`}, {
          1.695742911044129, 0}}, {{
          1.840765028137552, -0.08086210833894181}, {1.840765028137552, 0}}},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[{{{1.8739881290140903`, 0.32370180294367706`}, {
          1.8739881290140903`, 0}}, {{1.9241541124690746`, 
          0.8917604949081901}, {1.9241541124690746`, 0}}, {{2.05068955492569, 
          2.0732960911369744`}, {2.05068955492569, 0}}, {{2.139980812086991, 
          2.6824781379370433`}, {2.139980812086991, 0}}, {{
          2.2242753819205343`, 3.092806350053151}, {
          2.2242753819205343`, 0}}, {{2.2284605946292704`, 
          3.1092184649047496`}, {2.2284605946292704`, 0}}, {{
          2.2907121425242636`, 3.311728614970026}, {
          2.2907121425242636`, 0}}, {{2.291209019869938, 
          3.3130411906714166`}, {2.291209019869938, 0}}, {{
          2.3442979929782473`, 3.4272177840259967`}, {
          2.3442979929782473`, 0}}, {{2.391413544939685, 
          3.4878318627199847`}, {2.391413544939685, 0}}, {{2.482093985975581, 
          3.5100574636534247`}, {2.482093985975581, 0}}, {{2.486240649040094, 
          3.5084219589242904`}, {2.486240649040094, 0}}},
        VertexColors->None]}}}}, {
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAY46NVfYH+D97YSKL/Ob/P4iJIEvS
UPk/30r1xEwM/D+d5oMcv1X5P/5OLkPg/vs/K7jai4pu+T8qcrYVM7z7P+Sl
fmvJtfk/kibzPLkF+z8XAfAbwDv6P1830Klg2fk/xcqWiFoG+z/4aq6bWJT4
P+S7lVHDIfs/JzRt49t1+D94ircHxnP9P5uS0HkcRPk/7lLz+dr7/T/a1BDo
qk76PxxMmNJVyf4/nsofy4pU/D+xPOXsz2cAQJTpSl2mQAFAZNmPQq4eAUDR
K9JG7RQDQD8sNeRQywFAHcGfLqfyA0AE3PIl49MBQKLKavei9gNA0IhF42BT
AkCu0okErt4DQP4hBWVlVAJA38Q1td3dA0AuXF9OH8ECQP2UnwV2UQNAqdG1
bJ0hA0D/CWNcsIUCQEDoehdU2wNAKZXDzfZyAEB25ywj0uMDQD1uLMxqWABA
SuOn6g==
      "]], {}}, {
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[{}], {}}, 
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAY46NVfYH+D/kIXjaWxETwIiJIEvS
UPk/qd+CDZeHDcCd5oMcv1X5P+2oD3XMZA3AK7jai4pu+T98ZJveHrUMwOSl
fmvJtfk/1EAtTxy4CsAXAfAbwDv6P9NgDwHV7wbAxcqWiFoG+z9XkhI9azIB
wOS7lVHDIfs/rFI7pNdsAMB4ircHxnP9PzAmzQ5hs7S/7lLz+dr7/T83KFPE
h7fUPxxMmNJVyf4/vNovTk2J7D+xPOXsz2cAQBDd0kIclgBAZNmPQq4eAUCJ
ZRUZt3UFQD8sNeRQywFAHbdyQRG+CEAE3PIl49MBQPAUN+6t3whA0IhF42BT
AkBpMHSSa34KQP4hBWVlVAJAiOBhvRuBCkAuXF9OH8ECQDxKVSjxagtAqdG1
bJ0hA0D9oUJkFOcLQEDoehdU2wNAAMfrAZkUDEB25ywj0uMDQEYvMYg/EQxA
+PyZFA==
       "]], {}}}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{1.501943906966425, 0},
  Method->{"MessagesHead" -> DiscretePlot},
  PlotRange->{{1.501943906966425, 2.486240649040094}, {-4.766951955396937, 
   3.5100574636534247`}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"y2", "[", 
    RowBox[{
    "w0_", ",", " ", "w1_", ",", " ", "w2_", ",", " ", "w3_", ",", " ", "w4_",
      ",", " ", "w5_", ",", " ", "w6_", ",", "w7_", ",", " ", "w8_", ",", " ",
      "w9_", ",", " ", "w10_", ",", " ", "w11_", ",", " ", "w12_", ",", " ", 
     "w13_", ",", " ", "w14_", ",", " ", "w15_", ",", " ", "w16_", ",", " ", 
     "w17_", ",", " ", "w18_", ",", " ", "w19_", ",", " ", "w20_", ",", "  ", 
     "z_"}], "]"}], " ", "=", " ", 
   RowBox[{"w0", " ", "+", " ", 
    RowBox[{"w1", " ", "*", " ", 
     RowBox[{"z", "^", "1"}]}], " ", "+", "  ", 
    RowBox[{"w2", " ", "*", " ", 
     RowBox[{"z", "^", "2"}]}], " ", "+", " ", 
    RowBox[{"w3", " ", "*", " ", 
     RowBox[{"z", "^", "3"}]}], " ", "+", " ", 
    RowBox[{"w4", " ", "*", " ", 
     RowBox[{"z", "^", "4"}]}], " ", "+", " ", 
    RowBox[{"w5", " ", "*", " ", 
     RowBox[{"z", "^", "5"}]}], " ", "+", " ", 
    RowBox[{"w6", " ", "*", " ", 
     RowBox[{"z", "^", "6"}]}], " ", "+", " ", 
    RowBox[{"w7", " ", "*", " ", 
     RowBox[{"z", "^", "7"}]}], " ", "+", " ", 
    RowBox[{"w8", " ", "*", " ", 
     RowBox[{"z", "^", "8"}]}], " ", "+", " ", 
    RowBox[{"w9", " ", "*", " ", 
     RowBox[{"z", "^", "9"}]}], " ", "+", " ", 
    RowBox[{"w10", " ", "*", " ", 
     RowBox[{"z", "^", "10"}]}], " ", "+", " ", 
    RowBox[{"w11", " ", "*", " ", 
     RowBox[{"z", "^", "11"}]}], " ", "+", " ", 
    RowBox[{"w12", " ", "*", " ", 
     RowBox[{"z", "^", "12"}]}], " ", "+", " ", 
    RowBox[{"w13", " ", "*", " ", 
     RowBox[{"z", "^", "13"}]}], " ", "+", " ", 
    RowBox[{"w14", " ", "*", " ", 
     RowBox[{"z", "^", "14"}]}], " ", "+", " ", 
    RowBox[{"w15", " ", "*", " ", 
     RowBox[{"z", "^", "15"}]}], " ", "+", " ", 
    RowBox[{"w16", " ", "*", " ", 
     RowBox[{"z", "^", "16"}]}], " ", "+", " ", 
    RowBox[{"w17", " ", "*", " ", 
     RowBox[{"z", "^", "17"}]}], " ", "+", " ", 
    RowBox[{"w18", " ", "*", " ", 
     RowBox[{"z", "^", "18"}]}], " ", "+", " ", 
    RowBox[{"w19", " ", "*", " ", 
     RowBox[{"z", "^", "19"}]}], " ", "+", " ", 
    RowBox[{"w20", " ", "*", " ", 
     RowBox[{"z", "^", "20"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"xVal", " ", "=", " ", 
   RowBox[{"Part", "[", 
    RowBox[{
     RowBox[{"RandomReal", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1.5", ",", "2.5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "21"}], "}"}]}], "]"}], ",", " ", "1"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"FindFit", "[", 
    RowBox[{
     RowBox[{"f", "[", "xVal", "]"}], ",", " ", 
     RowBox[{"y2", "[", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6", " ", ",", " ", "w7", ",", " ", "w8", 
       ",", " ", "w9", ",", " ", "w10", ",", " ", "w11", ",", " ", "w12", ",",
        " ", "w13", " ", ",", " ", "w14", ",", " ", "w15", ",", " ", "w16", 
       ",", " ", "w17", ",", " ", "w18", ",", " ", "w19", ",", " ", "w20", 
       " ", ",", "z"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
      "w0", ",", " ", "w1", ",", " ", "w2", ",", " ", "w3", ",", " ", "w4", 
       ",", " ", "w5", ",", " ", "w6", " ", ",", " ", "w7", ",", " ", "w8", 
       ",", " ", "w9", ",", " ", "w10", ",", " ", "w11", ",", " ", "w12", ",",
        " ", "w13", " ", ",", " ", "w14", ",", " ", "w15", ",", " ", "w16", 
       ",", " ", "w17", ",", " ", "w18", ",", " ", "w19", ",", " ", "w20"}], 
      " ", "}"}], ",", " ", "z"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ws", " ", "=", " ", 
   RowBox[{"ws", " ", "/.", " ", 
    RowBox[{"Rule", " ", "\[Rule]", " ", "List"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"DiscretePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"f", "[", "x", "]"}], ",", " ", 
     RowBox[{"y2", "[", 
      RowBox[{
       RowBox[{"ws", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "4", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "5", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "6", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "7", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "8", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "9", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "10", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "11", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "12", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "13", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "14", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "15", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "16", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "17", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "18", "]"}], "]"}], ",", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "19", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "20", "]"}], "]"}], ",", " ", 
       RowBox[{"ws", "[", 
        RowBox[{"[", "21", "]"}], "]"}], ",", "  ", "x"}], "]"}]}], "}"}], 
   ",", " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "xVal"}], "}"}]}], "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], Opacity[0.2], 
       LineBox[{{{1.523179112275766, 1.9274378221248902`}, {
          1.523179112275766, 0}}, {{1.600741057179587, 1.7042270941825843`}, {
          1.600741057179587, 0}}, {{1.6358386906026543`, 
          1.6232072402019493`}, {1.6358386906026543`, 0}}, {{
          1.6912008611406861`, 1.5337362105650265`}, {
          1.6912008611406861`, 0}}, {{1.7510529897636506`, 
          1.5000109432535025`}, {1.7510529897636506`, 0}}, {{
          1.7639535678599576`, 1.5019204016941603`}, {
          1.7639535678599576`, 0}}, {{1.802929022260538, 
          1.5273956188815803`}, {1.802929022260538, 0}}, {{
          1.8436753949046478`, 1.584135025633621}, {
          1.8436753949046478`, 0}}, {{1.8584461261110934`, 
          1.6116501158610939`}, {1.8584461261110934`, 0}}, {{
          1.8765398276398604`, 1.6498837402566067`}, {
          1.8765398276398604`, 0}}, {{1.9027073513590396`, 
          1.713030571601113}, {1.9027073513590396`, 0}}, {{
          2.0029110574950844`, 2.009144846919094}, {
          2.0029110574950844`, 0}}, {{2.1636618519590685`, 
          2.428215859607683}, {2.1636618519590685`, 0}}, {{
          2.2027120604104593`, 2.4780919749781067`}, {
          2.2027120604104593`, 0}}, {{2.215432269077987, 2.488252822256452}, {
          2.215432269077987, 0}}, {{2.29758119339811, 2.4778214424132115`}, {
          2.29758119339811, 0}}, {{2.29835541563222, 2.4770994141330336`}, {
          2.29835541563222, 0}}, {{2.3095565926381254`, 2.465399237541162}, {
          2.3095565926381254`, 0}}, {{2.320881142330567, 
          2.4512279605999945`}, {2.320881142330567, 0}}, {{2.349078446056783, 
          2.406203431383989}, {2.349078446056783, 0}}, {{2.4890480827759895`, 
          2.0343793154342897`}, {2.4890480827759895`, 0}}},
        VertexColors->None]}}}, 
    {RGBColor[0.6, 0.24, 0.4428931686004542], {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], LineBox[{},
        VertexColors->None]}}, {
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[{{{2.1636618519590685`, -0.6601401388105834}, {
          2.1636618519590685`, 0}}, {{
          2.2027120604104593`, -0.9437099024516803}, {
          2.2027120604104593`, 0}}, {{
          2.215432269077987, -1.0191112878368371`}, {
          2.215432269077987, 0}}, {{2.29758119339811, -1.3243347704528567`}, {
          2.29758119339811, 0}}, {{2.29835541563222, -1.3258288864614163`}, {
          2.29835541563222, 0}}, {{
          2.3095565926381254`, -1.3447939613636715`}, {
          2.3095565926381254`, 0}}, {{
          2.320881142330567, -1.359037739346479}, {2.320881142330567, 0}}, {{
          2.349078446056783, -1.3740259586892416`}, {
          2.349078446056783, 0}}, {{
          2.4890480827759895`, -1.0933167128915693`}, {
          2.4890480827759895`, 0}}},
        VertexColors->None]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], Opacity[0.2], 
       LineBox[{{{1.523179112275766, 17.040920966754022`}, {
          1.523179112275766, 0}}, {{1.600741057179587, 13.952361523187545`}, {
          1.600741057179587, 0}}, {{1.6358386906026543`, 
          12.550913186431057`}, {1.6358386906026543`, 0}}, {{
          1.6912008611406861`, 10.399945143564604`}, {
          1.6912008611406861`, 0}}, {{1.7510529897636506`, 
          8.214588136810105}, {1.7510529897636506`, 0}}, {{
          1.7639535678599576`, 7.76780768562744}, {
          1.7639535678599576`, 0}}, {{1.802929022260538, 6.477419778279611}, {
          1.802929022260538, 0}}, {{1.8436753949046478`, 5.23076211287251}, {
          1.8436753949046478`, 0}}, {{1.8584461261110934`, 
          4.806022824285045}, {1.8584461261110934`, 0}}, {{
          1.8765398276398604`, 4.305962954277411}, {
          1.8765398276398604`, 0}}, {{1.9027073513590396`, 
          3.62270406536213}, {1.9027073513590396`, 0}}, {{2.0029110574950844`,
           1.4467002838093703`}, {2.0029110574950844`, 0}}},
        VertexColors->None]}}}}, {
    {RGBColor[0.24720000000000014`, 0.24, 0.6], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAr8uSD/Fe+D8QmbEKydb+P3I2n6ei
nPk/foonoYNE+z/Ct9owZSz6P77DtCeo+Pk/gA9ZoigP+z+KFRH7Lor4PwKR
ySNQBPw/jKeOeQsA+D/C71lgJzn8P66L56/dB/g/bOQ5GszY/D+tZnJjNnD4
P7TiWMWxf/0/X7b4951Y+T+OZlABMrz9P/d8w6FRyfk/wqxVoE4G/j8mqyl+
7GX6Pzoif0N9cf4/EDOhvpJo+z/C54U79gUAQDSOk4i6EgBAzSLu8S1PAUDx
JcVv/GwDQNm9L4AnnwFAkRao4iHTA0BRi7GNNLkBQFcrfhjx5wNAcmWsP3Jh
AkA28GMMlNIDQIrMBSoIYwJAGiNlfxnRA0CzIo3O+HkCQL2URjwjuQNACLTh
ISqRAkDCiq5nHZwDQEhr7KPpygJAp4mqlec/A0AVjo0KkukDQNiXm6loRgBA
h/2eEg==
      "]], {}}, {
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[{}], {}}, 
     {RGBColor[0.6, 0.24, 0.4428931686004542], {}, PointBox[CompressedData["
1:eJwBYQGe/iFib1JlAgAAABUAAAACAAAAr8uSD/Fe+D/i7eXLeQoxQHI2n6ei
nPk/Vh747ZvnK0DCt9owZSz6PyZQDUsRGilAgA9ZoigP+z+mmx+cxcwkQAKR
ySNQBPw//2oLf95tIEDC71lgJzn8P5mMjS08Eh9AbOQ5GszY/D+wsvi64OgZ
QLTiWMWxf/0/7sU/50zsFECOZlABMrz9PwmJGAxeORNAwqxVoE4G/j/Xokla
TjkRQDoif0N9cf4/Y4jeREz7DEDC54U79gUAQN8zYTKvJfc/zSLu8S1PAUDG
/F423h/lv9m9L4AnnwFARR/+G98y7r9Ri7GNNLkBQAbmQ6NHTvC/cmWsP3Jh
AkCdzwCoeTD1v4rMBSoIYwJAIhq3WZg29b+zIo3O+HkCQOSkPqxGhPW/CLTh
ISqRAkDMXUhbnr71v0hr7KPpygJAMc7GpAL89b8Vjo0KkukDQNehYKo5fvG/
cYqhEw==
       "]], {}}}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{1.523179112275766, 0},
  Method->{"MessagesHead" -> DiscretePlot},
  PlotRange->{{1.523179112275766, 2.4890480827759895`}, {-1.3740259586892416`,
    17.040920966754022`}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}}]], "Output"]
}, Open  ]]
},
WindowSize->{1350, 673},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
PrintingCopies->1,
PrintingPageRange->{32000, 32000},
PrintingOptions->{"Magnification"->1.,
"PaperOrientation"->"Portrait",
"PaperSize"->{612, 792}},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"9.0 for Microsoft Windows (64-bit) (November 20, 2012)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1485, 35, 1776, 54, 132, "Input"],
Cell[3264, 91, 3744, 75, 243, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7045, 171, 1305, 40, 92, "Input"],
Cell[8353, 213, 3749, 74, 243, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12139, 292, 1305, 40, 92, "Input"],
Cell[13447, 334, 3770, 75, 243, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17254, 414, 2617, 73, 112, "Input"],
Cell[19874, 489, 3767, 75, 243, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[23678, 569, 2617, 73, 112, "Input"],
Cell[26298, 644, 3764, 75, 243, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[30099, 724, 2617, 73, 112, "Input"],
Cell[32719, 799, 3778, 75, 243, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[36534, 879, 5708, 140, 192, "Input"],
Cell[42245, 1021, 5924, 104, 245, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[48206, 1130, 5708, 140, 192, "Input"],
Cell[53917, 1272, 5997, 110, 233, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[59951, 1387, 5708, 140, 192, "Input"],
Cell[65662, 1529, 5972, 108, 234, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature vu0N552KH@HqTDw9#7mUJ4BU *)
