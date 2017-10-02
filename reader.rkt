#lang br/quicklang
(require "gramatica.rkt")
#|Analizador de lexico|#
(define (read-syntax path port)
  ;crear un arbol de sintaxis a tarves de make-tokenizer
  ;make-tokenizer retorna un funcion que lee tokens repetidamente
  ;
  (define parse-tree (parse path (make-tokenizer port)))
  (define module-datum `(module leng-graph-mod "expander.rkt"
                          ,parse-tree))
  ;Crea un objeto lexico que contiene el arbol
  (datum->syntax #f module-datum))
(provide read-syntax)

(require brag/support)
(define (make-tokenizer port)
  (define (next-token)
    (define leng-graph-lexer
      (lexer
       [(eof) eof]
       [(char-set "megpuABCDEFGHIJKLMÑOPQRSTVWXYZoc") lexeme]
       [any-char (next-token)]))
    (leng-graph-lexer port))  
  next-token)