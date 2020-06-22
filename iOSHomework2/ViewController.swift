//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        

        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        var functionCall = secretNameLetter(membersNamesArray: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        var functionCall = secretNametoEmoji(membersNamesArray: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    
   
    func secretNameLetter(membersNamesArray:[String])->String{
        
     
          var firstLetter = ""
        
        for i in 0..<membersNamesArray.count{
            
            firstLetter += membersNamesArray[i].prefix(1)
        }
        return firstLetter
        
    }
    
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    func secretNametoEmoji(membersNamesArray:[String])->String{
        var letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","P","Q","R","S","T","U","V","W","X","Y","Z"]
        var emojis = ["😍","🙁","😁","😆","😛","😎","🤪","🤓","🥺","🤯","😕","😞","🥰","😡","🥶","🤭","🤫","🙄","🤗","😭","🤬","🤥","🤐","😷","🤒","🙃"]
        var finalstring = ""
        var firstletter = ""
        for i in membersNamesArray{
            firstletter = String(i.prefix(1))
            for j in 0..<letters.count{
                if firstletter == letters[j]{
                    finalstring += emojis[j]
                }
            }
        }
        return finalstring
                }
    // MARK: -   النهاية
    
    
    
}
