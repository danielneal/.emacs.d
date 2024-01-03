(defun cider-jack-in-sqa-storm (params)
  (interactive "P")
  (let ((cider-clojure-cli-global-options "-A:dev:profile:test:clojurestorm:clj-refactor")
	(cider-jack-in-nrepl-middlewares (-concat cider-jack-in-nrepl-middlewares '("flow-storm.nrepl.middleware/wrap-flow-storm"))))
    (cider-jack-in-clj params)))

(defun cider-jack-in-sqa (params)
  (interactive "P")
  (let ((cider-clojure-cli-global-options "-A:dev:profile:test:clj-refactor"))
    (cider-jack-in-clj params)))

(defun cider-jack-in-figwheel (params)
  (interactive "P")
  (let ((cider-clojure-cli-global-options "-A:sqa-common-cljs:sqa-common-demo"))
    (cider-jack-in-cljs params)))

(setq whitespace-line-column 90)
