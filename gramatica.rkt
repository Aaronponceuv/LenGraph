#lang brag
#| Gramtica del Lenguaje|#
;--Simbolos utilizados--
;make: m
;edit:e
;graph: g
;ponderado:p
;no ponderado: u
;Nodos: [A-Z]
;family-circular: o
;family-complete: c
leng-graph: (select | graph| tipe_pond| nodes|family)*
select: "m" | "e"
graph: "g"
tipe_pond: "p"| "u"
nodes: nodes|"A"|"B"|"C"|"D"|"E"|"F"|"G"|"H"|"I"|"J"|"K"|"L"|"M"|"Ñ"|"O"|"P"|"Q"|"R"|"S"|"T"|"W"|"X"|"Y"|"Z"
family:"o"|"c"