(defun new-buffer ()
  "Create a new buffer with a random name."
  (interactive)
  (let ((buffer (generate-new-buffer "temp")))
    (switch-to-buffer buffer)))
