(print "What's your name?")

(defvar *name* (read))

(defun hello-you (name)
    (format t "Hello ~a! ~%" name)
)

(hello-you *name*)