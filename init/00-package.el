;;
;; package settings
;;

;; company
(use-package company
	     :init
	     (setq company-selection-wrap-around t)
	     :bind
	     (:map company-active-map
		("M-n" . nil)
		("M-p" . nil)
		("C-n" . company-select-next)
		("C-p" . company-select-previous)
		("C-h" . nil))
	     :config
	     (global-company-mode))

;;
(use-package avy)
(use-package helm)
(use-package helm-swoop)
(use-package magit)
(use-package isearch)
