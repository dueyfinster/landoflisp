;;; From Derek Banas tutorial on YouTube: https://www.youtube.com/watch?v=ymSq4wHrqyU

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


;;; More Advanced Math
(format t "(expt 4 2) = ~d ~%" (expt 4 2))
(format t "(sqrt 81) = ~d ~%" (sqrt 81))
(format t "(exp 1) = ~d ~%" (exp 1))
(format t "(log 1000 10) = ~d ~%" (log 1000 10)) ; = 3
(format t "(eq 'dog 'dog) = ~d ~%" (eq 'dog 'dog))
(format t "(floor 5.5) = ~d ~%" (floor 5.5))
(format t "(ceiling 5.5) = ~d ~%" (ceiling 5.5))
(format t "(max 5 10) = ~d ~%" (max 5 10))
(format t "(min 5 10) = ~d ~%" (min 5 10))
(format t "(oddp 15) = ~d ~%" (oddp 15))
(format t "(evenp 15) = ~d ~%" (evenp 15))
(format t "(numberp 2) = ~d ~%" (numberp 2))
(format t "(null nil) = ~d ~%" (null nil))


;;; Check equality with symbols
(defparameter *myname* 'Neil)
(format t "(eq *myname* 'Neil) = ~d ~%" (eq *myname* 'Neil))

;;; Check equality with numbers etc
(format t "(equal 'car 'truck) = ~d ~%" (equal 'car 'truck))
(format t "(equal 10 10) = ~d ~%" (equal 10 10))
(format t "(equal 5.5 5.3) = ~d ~%" (equal 5.5 5.3))

;;; Check equality with string
(format t "(equal \"string\" \"String\") = ~d ~%" (equal "string" "String"))
;;; Check equality with list
(format t "(equal (list 1 2 3) (list 1 2 3)) = ~d ~%" (equal (list 1 2 3) (list 1 2 3)))

;; Compare int to float and strings with upper/lower case
(format t "(equalp 1.0 1) = ~d ~%" (equalp 1.0 1))
(format t "(equalp \"Neil\" \"neil\") = ~d ~%" (equalp "Neil" "neil"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Using if statements
(defvar *age* 18)
(if (= *age* 18)
    (format t "You can vote~%")
    (format t "You can't vote~%"))

;; checks for not equal
(if (not (= *age* 18))
    (format t "You can vote~%")
    (format t "You can't vote~%"))

;; using and statement
(if (and (<= *age* 14) (>= *age* 67))
    (format t "Time for work~%")
    (format t "Work if you want~%")
)

;; using or statement
(if (or (<= *age* 14) (>= *age* 67))
    (format t "Work if you want~%")
    (format t "Time for work~%")
)

(defvar *num* 2)
(defvar *num-2* 2)
(defvar *num-3* 2)

(if (= *num* 2)
    (progn 
        (setf *num-2* (* *num-2* 2))
        (setf *num-3* (* *num-3* 3))
    )
    (format t "Not equal to 2~%")
)

(format t "*num-2* = ~d ~%" *num-2*)
(format t "*num-3* = ~d ~%" *num-3*)


;;; CASE Statements
(defvar *sage* 18)

(defun get-school (age)
    (case age
        (4 (print "Preschool"))
        (5 (print "Junior Infants"))
        (otherwise (print "Secondary school"))
    )
)

(get-school *sage*)

;;; Print a newline after print statements
(terpri)

;;; WHEN Statement
(when (= *sage* 18)
    (setf *num-3* 18)
    (format t "Go to college you're ~d ~%" *num-3*)
)

;;; UNLESS Statement
(unless (not (= *sage* 18))
    (setf *num-3* 20)
    (format t "You're older then college age ~d ~%" *num-3*)
)

;;; CONDITIONAL STATEMENT
(defvar *college-ready* nil)
(cond ( (>= *sage* 18)
        (setf *college-ready* 'yes)
        (format t "Ready for college ~%")
    )
    ( (< *sage* 18)
        (setf *college-ready* 'no)
        (format t "Not ready for college ~%")
    )
    (t (format t "Don't Know ~%"))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LOOPING

(loop for x from 1 to 10
    do (print x)
)

;;; Loop until x is 10, then return
(setq x 1)
(loop 
    (format t "~d ~%" x)
    (setq x (+ x 1))
    (when  (> x 10) (return x))
)

;;; Looping through a list
(loop for x in '(Peter Paul Mary) do
    (format t "~s ~%" x)
)

;; looping starting at arbitrary number
(loop for y from 100 to 110
    do (print y)
)