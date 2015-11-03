//
//  ViewController.swift
//  MyPreferences
//
//  Created by Charles Konkol on 3/23/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBAction func btnClear(sender: AnyObject) {
        
        let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(nil, forKey: "fullname")
        defaults.setObject(nil, forKey: "address")
        defaults.setObject(nil, forKey: "year")
        
        defaults.synchronize()
        
        txtFullname.text = ""
        txtAddress.text = ""
        MyYears.selectRow(0,inComponent: 0, animated: true)
        txtFullname.becomeFirstResponder()
        
    }
    
    //years
    var selectedyear:String!
    let pickerYear = ["1940","1950","1960", "1970","1980","1990","2000","2010","2020"]
    @IBAction func btnLoad(sender: UIButton) {
        let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        if let fullNameNotNull = defaults.objectForKey("fullname") as? String {
            self.txtFullname.text = defaults.objectForKey("fullname") as? String
        }
        
        if let addressIsNotNill = defaults.objectForKey("address") as? String {
            self.txtAddress.text = defaults.objectForKey("address") as? String
        }
        
        
        if let yearIsNotNill = defaults.objectForKey("year") as? String {
            var favoriteYearSelected = defaults.objectForKey("year") as! String
            let SelectedYear:Int = (pickerYear).indexOf(favoriteYearSelected)!
           
            if (favoriteYearSelected=="1940")
            {
                
            }
            
            if (favoriteYearSelected=="1950")
            {
                
            }
            if (favoriteYearSelected=="1960")
            {
               
            }
            
            if (favoriteYearSelected=="1970")
            {
                
            }
            
            if (favoriteYearSelected=="1980")
            {
                
            }
            
            if (favoriteYearSelected=="1990")
            {
                
            }
            
            if (favoriteYearSelected=="2000")
            {
                
            }
            
            if (favoriteYearSelected=="2010"){
                
            }
            
            if (favoriteYearSelected=="2020")
            {
                
            }

            MyYears.selectRow(SelectedYear,inComponent: 0, animated: true)
        }
    }
    
    @IBOutlet weak var txtFullname: UITextField!

    @IBOutlet weak var txtAddress: UITextField!
    
    @IBOutlet weak var MyYears: UIPickerView!
    
    
    @IBAction func btnSave(sender: UIButton) {
        let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(self.txtFullname.text, forKey: "fullname")
        defaults.setObject(self.txtAddress.text, forKey: "address")
        defaults.setObject(selectedyear, forKey: "year")
      
        
        defaults.synchronize()
    }
    
    //Needed for picker
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerYear.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         selectedyear=pickerYear[row]
        if (selectedyear=="1940")
        {
            
        }
        if (selectedyear=="1950")
        {
            
        }
        if (selectedyear=="1960")
        {
            
        }
        if (selectedyear=="1970")
        {
            
        }
        if (selectedyear=="1980")
        {
            
        }
        if (selectedyear=="1990")
        {
            
        }
        if (selectedyear=="2000")
        {
            
        }
        if (selectedyear=="2010")
        {
            
        }
        if (selectedyear=="2020")
        {
            
        }
        
        
        return pickerYear[row]
       
    }
    //new method hiding keyboard
  override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches , withEvent: event)
    }
    //set delegate to all uitextfields
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFullname.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

