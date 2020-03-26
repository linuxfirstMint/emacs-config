;;
;; package settings
;;

;; company-mode
(use-package company
             :ensure t
             :demand
	     :bind
	     (("<tab>" . company-indent-or-complete-common)
	       :map company-active-map
		("M-n" . nil)
		("M-p" . nil)
		("C-n" . company-select-next)
		("C-p" . company-select-previous)
		("C-h" . nil))
	     :config
	     (global-company-mode)
	     (setq company-idle-delay 0)
	     (setq company-selection-wrap t)
	     (setq completion-ignore-case t)
	     (setq company-dabbrev-downcase nil)
	     (setq company-backends '((company-capf company-dabbrev)
				      company-semantic
				      company-files
				      (company-dabbrev-code company-gtags
							    company-etags company-keywords)
				      )))
(use-package avy)
(use-package helm)
(use-package helm-swoop)
(use-package magit)
