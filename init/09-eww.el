;;
;; eww settings
;;

(use-package eww
  :config
  (setq eww-search-prefix "https://www.google.co.jp/search?q=")
  (defun eww-disable-images ()
  "eww で画像表示させない"
  (interactive)
  (setq-local shr-put-image-function 'shr-put-image-alt)
  (eww-reload))
  (defun eww-enable-images ()
  "eww で画像表示させる"
  (interactive)
  (setq-local shr-put-image-function 'shr-put-image)
  (eww-reload))
  (defun shr-put-image-alt (spec alt &optional flags)
  (insert alt))
  ;; はじめから非表示
  (defun eww-mode-hook--disable-image ()
  (setq-local shr-put-image-function 'shr-put-image-alt))
  (add-hook 'eww-mode-hook 'eww-mode-hook--disable-image)
  (bind-keys* :map eww-mode-map
             ("c-[" . eww-next-url)
             ("c-]" . eww-back-url)
             ("c-r" . eww-reload))
  )
