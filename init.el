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

(straight-use-package 'use-package)

(setq straight-use-package-by-default t)

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

(load-directory "~/.emacs.d/personal")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ignored-local-variable-values
   '((whitespace-line-column . 100)
     (cider-format-code-options
      ("indents"
       (("helix.hooks/use-effect"
	 (("inner" 0)))
	("mfor"
	 (("block" 1)))))
      ("alias-map"
       (("hooks" "helix.hooks")))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
