;; Set up straight.el
(defvar bootstrap-version)

(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(defun load-directory (dir)
  "Load all .el files in the DIR directory and report any errors."
  (let ((error-buffer (get-buffer-create "*Elisp-Errors*"))
        (errors nil))
    ;; Loop over all .el files in the directory.
    (dolist (file (directory-files dir t "\\.el$"))
      (condition-case err
          (load file nil 'nomessage)
        (error 
         (push (format "%s:1:%s"
		       file 
                       (error-message-string err)) errors))))
    ;; If there were any errors, display the error buffer
    (when errors
      (with-current-buffer error-buffer
        (erase-buffer)
        (insert (mapconcat 'identity (nreverse errors) "\n"))
        (pop-to-buffer error-buffer)))))

(load-directory "/users/danielneal/.emacs.d/personal")

