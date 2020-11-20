(setq make-backup-files nil) ; stop creating backup files.

; LOAD CUSTOM FILES
;(load "~/.emacs.d/myOpenShell") ; load custom eLisp file for Opening a Shell
(load "~/.emacs.d/powerline") ; load powerline for taksbar.
(load "~/.emacs.d/myDragAndDropLine") ; Drad and Drop selected lines.
(load "~/.emacs.d/myDuplicateLine"); Copy the line above.




;; EXECUTE LOADED SCRIPTS
(require 'powerline)

; LOAD THEMES
(load-theme 'manoj-dark)

; SETTING UP MODES
(cua-mode t) ; standard copy paste controls.
(put 'downcase-region 'disabled nil);
(put 'upcase-region 'disabled nil);
(global-linum-mode t) ; Add number for lines.
(electric-pair-mode t) ; Add pair of bracket automaticially.
(global-subword-mode t); navigate through camel cases.
(desktop-save-mode t) ; save/restore opened file.
(global-hl-line-mode t) ; turn ON highlight current line.
(global-visual-line-mode nil) ; Soft wrap of extended lines.

;;TODO:
;; 	DONE - Increment and decrement font sizes
;;	DONE - Drag text up and down
;; 	DONE - Duplicate above line
;; 	DONE - Capitalize selected words
;; Auto	fill words from within a file
;; GTAGS 
;; Bold, Italic, Underline
;; Find and replace 
;; Google search error
;; GIT Integrations(MAGIT)
;; Start localServer
;; HELM -
;; MIXIN -
;; spellcheck
;; Cut typing word
;; Read MAIL
;; Twitter
;; Add a line on top and bottom
;; PDF editor
;; TAB spacing (replace TABs with 3 spaces)
;; Display space on text selection

;; MACRO VS LISP VS EXTENSION
;;PRELUDE PROJECT--- FOR REPL

;; SET UP LANGUAGE SPECIFIC CONFIG
;; Comment code's shortcut	
;; TODO: JavaScript
;;	 JS autofill
;;	 JSLint
;;	 JS REPL within emacs
;; TODO: HTML & CSS
;;	 HTML autoFill
;;	 Matching and ending HTML tags


; SETTING KEYS
(global-set-key (kbd "TAB") 'self-insert-command) ; Insert indent for TAB.
;-------- FILE OPERATIONS -----------
(global-set-key (kbd "C-w") 'kill-buffer) ; Close current buffer. Prev kill-region.
(global-set-key (kbd "C-b") 'delete-window) ; Delete window. Prev go one char back.

(global-set-key (kbd "C-o") 'list-buffers) ; open file. Prev open-line
(global-set-key (kbd "C-n") 'find-file) ; create new buffer. Prev next-line.
(global-set-key (kbd "C-S-n") 'make-frame-command) ; create new window. Prev nil.
(global-set-key (kbd "C-s") 'save-buffer) ; save file. Prev isearch-forward.
(global-set-key (kbd "C-S-s") 'write-file) ; save as.

(global-set-key (kbd "C-'") 'other-window) ; Go to next window. Prev scroll right.
(global-set-key (kbd "C-1") 'delete-other-windows); Delete other windows; Prev digit-argument.
(global-set-key (kbd "C-2") 'split-window-below); Split horizontal; Prev digit-argument.
(global-set-key (kbd "C-3") 'split-window-right); Split vertical; Prev digit-argument.
;----------- UTILITY ---------------
(global-set-key (kbd "M-'") 'next-buffer) ; Switch next buffer.
(global-set-key (kbd "M-;") 'previous-buffer) ; Switch next buffer.
(global-set-key (kbd "C-p") 'eshell) ; Open up shell prompt within emac; Prev previous-line.
(global-set-key (kbd "<f5>") 'calendar) ; shortcut calendar app.
;-------- TEXT OPERATIONS -----------
(global-set-key (kbd "C-a") 'mark-whole-buffer) ; select all. Prev move-beinning-of-line.
(global-set-key (kbd "C-f") 'isearch-forward) ; search. Prev forward-char.
(global-set-key (kbd "C-e") 'kill-visual-line) ; Kill region. Prev move-end-of-line.
(global-set-key (kbd "C-y") 'redo) ; redo. Prev yank.
(global-set-key (kbd "C-z") 'undo) ; undo. Prev suspend-frame.
(global-set-key (kbd "C-q") 'goto-line) ; Goto a particular line. Prev keyboard-quit.
(global-set-key (kbd "M-[") 'text-scale-decrease) ; Adjust font size
(global-set-key (kbd "M-]") 'text-scale-increase) ; Adjust font size.
(global-set-key (kbd "C-d") 'duplicate-line)
(global-set-key (kbd "C-u") 'upcase-region)
(global-set-key (kbd "C-l") 'downcase-region)

(global-set-key (kbd "<c-up>") 'move-text-up) ;
(global-set-key (kbd "<c-down>") 'move-text-down) ;

; set environmant variables
; (setenv "path"
;     (concat "/this/is/my/path" ";"
;     "/path/2" ";"
;     (getenv "path"))
