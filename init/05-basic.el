;;
;; basic settings
;;

;; time outline
(display-time)

;; line number
(use-package linum
  :config
  (global-display-line-numbers-mode t))

;; make line number easir to understand
(set-face-attribute 'linum nil
		    :foreground "#a9a9a9"
		    :background "#404040"
		    :height 0.9)


;; font
(custom-set-faces
'(default ((t (:family "Cica" :foundry "TMNM" :slant normal :weight normal :height 128 :width normal)))))

;; hide meny and tool bar
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; highlight corresponding parentheses
(show-paren-mode t)

;; make the "yes or no" selection "y or n"
(fset 'yes-or-no-p 'y-or-n-p)

;; automatically updates emacs buffer when files are updated outside emacs
(global-auto-revert-mode t)
