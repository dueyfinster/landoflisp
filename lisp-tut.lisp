(print "What's your name?")

(defvar *name* (read))

(defun hello-you (name)
    (format t "Hello ~a! ~%" name)
)

;;; Turn off all caps
(setq *print-case* :capitalize)

(hello-you *name*)

;;; Define variable
(defvar *number* 0)

;;; Update variable
(setf *number* 6)

;;; Formatting Numbers
(format t "Number with commas ~:d ~%" 10000000)

(format t "PI to 5 charachters ~5f ~%" 3.141593)

(format t "PI to 4 decimals ~,4f ~%" 3.141593)

(format t "10 Percent ~,,2f ~%" .10)

(format t "10 Dollars ~$ ~%" 10)


;;; Math
(format t "(+ 5 4) = ~d ~%" (+ 5 4))
(format t "(- 5 4) = ~d ~%" (- 5 4))
(format t "(* 5 4) = ~d ~%" (* 5 4))
(format t "(/ 5 4) = ~d ~%" (/ 5 4))
(format t "(/ 5 4.0) = ~d ~%" (/ 5 4.0))
(format t "(rem 5 4) = ~d ~%" (rem 5 4))
(format t "(mod 5 4) = ~d ~%" (mod 5 4))