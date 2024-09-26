(defvar treemacs-icons-file "~/.emacs.d/icons.json"
  "File location to store treemacs icons datastructure.")

(defun json-write-file (file data)
  "Write data as JSON to FILE."
  (with-temp-file file
    (insert (json-encode data))))

(defun refresh-treemacs-icons ()
  "Setup custom icons in treemacs according to the mapping from the file."
  (interactive)
  (when (file-exists-p treemacs-icons-file)
    (let ((json-key-type 'string))
      (let ((treemacs-icons-alist (json-read-file treemacs-icons-file)))
	(dolist (entry treemacs-icons-alist)
	  (treemacs-define-custom-icon (cdr entry) (car entry)))
	(treemacs-run-in-every-buffer
	 (treemacs-do-update-node "/Users/danielneal/Writing"))))))

(use-package treemacs
  :config
  (progn
    (treemacs-follow-mode t)
    (treemacs-resize-icons 12)
    (refresh-treemacs-icons)
				    
    ;; need to require this so can call do-follow
    (require 'treemacs-project-follow-mode)
    (add-hook 'treemacs-mode-hook (lambda ()
				    (setq-local line-spacing 2)))))


(use-package treemacs-projectile)

