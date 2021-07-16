;; make a function that caches its past results
(define (memoize proc)
  (let ((cache (make-table)))
    (define (delegate . args)
      (let ((hit (lookup cache args)))
        (or hit
            (let ((result (apply proc args)))
              (insert! cache args result)
              result))))
    delegate))

;; GUILE specific
(define make-table make-hash-table)
(define lookup hash-ref)
(define insert! hash-set!)

;; example
(define fib (memoize (lambda (n)
  (if (< n 2) n
      (+ (fib (- n 1))
         (fib (- n 2)))))))

(display
  (fib
    (string->number (list-ref (command-line) 1))))
(newline)
