(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

; THE LAW OF CAR
; The primitive `car` is defined only for non-empty lists.
(car '(a b c))
; => 'a
(car '(((hotdogs)) (and) (pickle) relish))
; => '((hotdogs))
(car (car '(((hotdogs)) (and) (pickle) relish)))
; => '(hotdogs)

; THE LAW OF CDR
; The primitive `cdr` is defined only for non-empty lists.
; The `cdr` of any non-empty list is always another list.
(cdr '(a b c))
; => '(b c)
(car (cdr '((b) (x y) ((c)))))
; => '(x y)
(cdr (cdr '((b) (x y) ((c)))))
; => '(((c)))

; THE LAW OF CONS
; The primitive `cons` takes two arguments. The second
; argument to `cons` must be a list. The result is a list.
(cons 'z '(a b c))
; => '(z a b c)
(cons '(a b (c)) '())
; => '((a b (c)))
(cons 'a '())
; => '(a)

; THE LAW OF NULL
; The primitive `null?` is defined only for lists.
(null? (quote ()))
(null? '())
; => #t
(null? '(a b c))
; => #f
(null? 'a)
; => #f

; THE LAW OF EQ
; The primitive `eq?` takes two arguments. Each must
; be a non-numeric atom.
(eq? 'Harry 'Harry)
; => #t
(eq? 'a 'b)
; => #f
