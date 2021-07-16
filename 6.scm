(import (scheme base) (scheme write))
(import (scheme process-context))

(define (fibo n previous current)
  (if (<= n 0) current
      (fibo (- n 1) current (+ current previous))))

(display
  (fibo
    (string->number (list-ref (command-line) 1))
    1 0))
(newline)
