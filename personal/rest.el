;; I use restclient mode to query API endpoints easily

(use-package restclient
  :straight t)

(add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))
