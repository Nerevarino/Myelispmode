(progn
(defun melm-common-procedure-and-print(textStrings)
  ""
  (let
    (
      offset      
    )
    (setq offset (make-string (current-column) ?\ ))
    (setq textStrings ;добавляем отступ ко всем строкам, кроме первой
      (cons 
        (car textStrings)
        (mapcar
          (lambda (string)
            (concat offset string)
          )
          (cdr textStrings)
        )
      )
    )
    (princ ;выводим результирующий текст
      (mapconcat ;соединяем все строки в текст
        (lambda (string)
          string
        )
        textStrings
        "\n"
      )	
      (current-buffer)
    )		
  )
)


(defun melm-defun(name signature)
  ""
  (interactive "sname: \nssignature: ")
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        (concat 
        "(defun " name "(" signature ")")
        "  \"\""
        "  ;(interactive)"
        "  "
        "  (let"
        "    ("
        "      "
        "    )"
        "    "
        "  )"
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)



(defun melm-let()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(let"
        "  ("
        "    "
        "    "
        "  )"
        "  "
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)



(defun melm-if()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(if()"
        "  (progn"
        "    "
        "  )"
        "  "
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)




(defun melm-when()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(when()"
        "  "
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)



(defun melm-while()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(while()"
        "  "
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)




(defun melm-unless()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(unless()"
        "  "
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)




(defun melm-cond()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(cond"
        "  (()"
        "    "
        "  )"
        "  (t"
        "    "
        "  )"
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)




(defun melm-throw(exception catch-value)
  ""
  (interactive "sexception: \nscatch return value :")
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        (concat
        "(throw '" exception " " catch-value")")
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)



(defun melm-catch(exception)
  ""
  (interactive "sexception: ")
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        (concat
        "(catch '" exception)
        "  "
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)





(defun melm-and()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(and () ())"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)



(defun melm-or()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(or () ())"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)




(defun melm-not()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(not ())"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)




(defun melm-lambda(signature)
  ""
  (interactive "ssignature: ")
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        (concat 
        "(lambda " "(" signature ")")
        "  \"\""
        "  ;(interactive)"
        "  "
        "  (let"
        "    ("
        "      "
        "    )"
        "    "
        "  )"
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)




(defun textToStrings(text)
  ""
  ;(interactive)
  
  (let
    (
      strings
      (startIndex 0)
      (endIndex 0)
    )
    (mapc
      (lambda (char)
        ""
        ;(interactive)
        
        (let
          (
            
          )
          (if(equal char ?\n)
            (progn
              
            )
            
          )
        )
      )
      text
    )
  )
)



(defun melm-com()
  ""
  (interactive)
  
  (let
    (
      regionStart
      regionEnd
      regionText
      regionTextStrings
    )
    (setq regionStart (min (region-beginning) (region-end)))
    (setq regionStart (max (region-beginning) (region-end)))
    (setq regionText (buffer-substring-no-properties regionStart regionEnd))
		
  )
)

   

)










