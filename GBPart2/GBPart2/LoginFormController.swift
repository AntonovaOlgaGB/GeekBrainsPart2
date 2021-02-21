//
//  LoginFormController.swift
//  GBPart2
//
//  Created by Olya on 16.12.2020.
//

import UIKit

class LoginFormController: UIViewController {

    @IBOutlet var passwordInput: UITextField!
    @IBOutlet var LoginBox: UITextField!
    
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
         
            // Жест нажатия
            let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
            // Присваиваем его UIScrollVIew
            scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }

    
    @objc func keyboardWasShown(notification: Notification) {
           
           // Получаем размер клавиатуры
           let info = notification.userInfo! as NSDictionary
           let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
           let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
           
           // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
           self.scrollView?.contentInset = contentInsets
           scrollView?.scrollIndicatorInsets = contentInsets
       }
       
    //Когда клавиатура исчезает
    @objc func keyboardWillBeHidden(notification: Notification) {
       // Устанавливаем отступ внизу UIScrollView, равный 0
       let contentInsets = UIEdgeInsets.zero
       scrollView?.contentInset = contentInsets
    }
    
    @objc func hideKeyboard() {
            self.scrollView?.endEditing(true)
        }


    @IBAction func loginButtomPressed(_ sender: Any) {
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            let login = LoginBox.text!
            let password = passwordInput.text!
            
            if login == "admin" && password == "123456" {
                return true
            } else {
                return true
            }
        }

}
