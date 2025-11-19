;; I use Auctex to render latex files

(use-package auctex
  :straight t
  :config (progn
	    (setq TeX-auto-save t)
	    (setq TeX-parse-self t)
	    (setq-default TeX-master nil)))
