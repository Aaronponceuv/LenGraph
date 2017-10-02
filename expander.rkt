#lang br/quicklang
#|Analizador de Sintaxis|#
(define-macro (leng-graph-module-begin PARSE-TREE)
  #'(#%module-begin
     'PARSE-TREE))
(provide (rename-out [leng-graph-module-begin #%module-begin]))

(define-macro (leng-graph SELECT-OR-GRAPH-OR-TIPE_POND-OR-NODES-OR-FAMILY ...)
  #'(void SELECT-OR-GRAPH-OR-TIPE_POND-OR-NODES-OR-FAMILY ...))
(provide leng-graph)

(define-macro (selects M-OR-E ...)
  #'(void M-OR-E ...))
(provide selects)

(define-macro (graph G ...)
  #'(void G ...))
(provide graph)

(define-macro (tipe_pond P-OR-U ...)
  #'(void P-OR-U ...))
(provide tipe_pond)

(define-macro (nodes ABECEDARIO ...)
  #'(void  ABECEDARIO ...))
(provide nodes)

(define-macro (family O-OR-C ...)
  #'(void  O-OR-C ...))
(provide family)

(define-macro-cases select
  [(select "m") #'(make)]        ; We have
  [(select "e") #'(edit)]
  [(graph "g") #'(graph)]
  [(tipe_pond "p") #'(ponderate)]
  [(tipe_pond "u") #'(unponderate)]
  [(nodes "A") #'(unponderate)]
  )
(provide select)
