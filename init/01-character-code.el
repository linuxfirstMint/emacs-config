;;
;; character code
;;

;;utf8-read&write
(set-language-environment "japanese")
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

;; font
(set-fontset-font t 'japanese-jisx0208 "SourceCodePro-Regular")
