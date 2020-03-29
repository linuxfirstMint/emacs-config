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
							    company-etags company-keywords)))
	     (set-face-attribute 'company-tooltip nil
                    :foreground "black" :background "lightgrey")
	     (set-face-attribute 'company-tooltip-common nil
                    :foreground "black" :background "lightgrey")
	     (set-face-attribute 'company-tooltip-common-selection nil
                    :foreground "orange" :background "steelblue")
	     (set-face-attribute 'company-tooltip-selection nil
                    :foreground "black" :background "steelblue")
	     (set-face-attribute 'company-preview-common nil
                    :background nil :foreground "lightgrey" :underline t)
	     (set-face-attribute 'company-scrollbar-fg nil
                    :background "green")
	     (set-face-attribute 'company-scrollbar-bg nil
                    :background "gray40"))

(use-package which-key
  :config
  (which-key-setup-side-window-bottom)
  (which-key-mode t))

(use-package xclip
  :config
  (xclip-mode t))

(use-package avy)
(use-package helm)
(use-package helm-swoop)
(use-package magit)
