(use-package markdown-mode
  :config (progn
	    (setq markdown-max-image-size '(300 . 300))))

(add-hook 'markdown-mode-hook
	  (lambda ()

	    (set-face-attribute 
	     'markdown-header-face-1  nil
	     :foreground "#FF8888")

	    (set-face-attribute 
	     'markdown-header-face-2  nil
	     :foreground "#FFFF88")

	    (set-face-attribute 
	     'markdown-header-face-3  nil
	     :foreground "#88FF88")

	    (set-face-attribute 
	     'markdown-header-face-4  nil
	     :foreground "#88FFFF")

	    (olivetti-mode)))


(markdown-toggle-inline-images)
