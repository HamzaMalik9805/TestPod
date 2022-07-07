//
//  KeyBroardDoneBtn.swift
//  TestPod
//
//  Created by Macbook on 07/07/2022.
//

import Foundation
import UIKit

extension UITextField{
    
       @IBInspectable var doneAccessory: Bool{
        get{
            return self.doneAccessory
        }
        set(hasDone){
            if hasDone
            {
                addDoneButtonOnKeybord()
            }
        }
    }
    
    func addDoneButtonOnKeybord()
    {
        let DoneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x:0, y:0, width: UIScreen.main.bounds.width, height: 50))
        
        
        DoneToolbar.barStyle = .default
       
        let flexspace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.DoneButtonAction))
        
        
        let item = [flexspace, done]
        DoneToolbar.items = item
        DoneToolbar.sizeToFit()
        
        self.inputAccessoryView = DoneToolbar
    }
    
    @objc func  DoneButtonAction()
    {
        self.resignFirstResponder()
        
    }
}
extension UITextView{
    
       @IBInspectable var doneAccessory: Bool{
        get{
            return self.doneAccessory
        }
        set(hasDone){
            if hasDone
            {
                addDoneButtonOnKeybord()
            }
        }
    }
    
    func addDoneButtonOnKeybord()
    {
        let DoneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x:0, y:0, width: UIScreen.main.bounds.width, height: 50))
        
        
        DoneToolbar.barStyle = .default
       
        let flexspace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.DoneButtonAction))
        
        
        let item = [flexspace, done]
        DoneToolbar.items = item
        DoneToolbar.sizeToFit()
        
        self.inputAccessoryView = DoneToolbar
    }
    
    @objc func  DoneButtonAction()
    {
        self.resignFirstResponder()
        
    }
}
