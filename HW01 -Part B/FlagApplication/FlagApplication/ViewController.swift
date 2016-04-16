//
//  ViewController.swift
//  FlagApplication
// Authors : Darshan Masti Prakash(SU ID :223909540) & Manjunath Babu(SU ID : 515114647).
// Course Number : CSE 651
// Assignment Number : 01
//  References :
//  https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson4.html#//apple_ref/doc/uid/TP40015214-CH6-SW1
//  http://makeapppie.com/2014/09/18/swift-swift-implementing-picker-views/

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate, UITextFieldDelegate {

    @IBOutlet var lblImage: UIImageView!

    @IBOutlet weak var txtboxCountry: UITextField!
 
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet var dpdCountry: UIPickerView!
    var currentImage:String = "";
    
    let countryList = [
        [
            "Cyprus_North",
            "Cyprus",
            "Czech_Republic",
            "Denmark",
            "Estonia",
            "Faroe_Islands",
            "Finland",
            "France",
            "Germany",
            "Gibraltar",
            "Greece",
            "Greenland",
            "Hungary",
            "Iceland",
            "Ireland",
            "Italy",
            "Latvia",
            "Liechtenstein",
            "Lithuania",
            "Luxembourg",
            "Macedonia",
            "Malta",
            "Moldova",
            "Monaco",
            "Netherlands",
            "Norway",
            "Poland",
            "Portugal",
            "Romania",
            "Russia",
            "San_Marino",
            "Serbia",
            "Slovakia",
            "Slovenia",
            "Spain",
            "Sweden",
            "Switzerland",
            "Ukraine",
            "United_Kingdom",
            "Vatican_City"
        ]
    ]
    
    var flagImage: [UIImage] = [
    UIImage(named:"Cyprus_North.png")!,
         UIImage(named: "Cyprus.png")!,
        UIImage(named: "Czech_Republic.png")!,
        UIImage(named: "Denmark.png")!,
        UIImage(named: "Estonia.png")!,
        UIImage(named: "Faroe_Islands.png")!,
        UIImage(named: "Finland.png")!,
        UIImage(named: "France.png")!,
        UIImage(named: "Germany.png")!,
        UIImage(named: "Gibraltar.png")!,
        UIImage(named: "Greece.png")!,
        UIImage(named: "Greenland.png")!,
        UIImage(named: "Hungary.png")!,
        UIImage(named: "Iceland.png")!,
        UIImage(named: "Ireland.png")!,
        UIImage(named: "Italy.png")!,
        UIImage(named: "Latvia.png")!,
        UIImage(named: "Liechtenstein.png")!,
        UIImage(named: "Lithuania.png")!,
        UIImage(named: "Luxembourg.png")!,
        UIImage(named: "Macedonia.png")!,
        UIImage(named: "Malta.png")!,
        UIImage(named: "Moldova.png")!,
        UIImage(named: "Monaco.png")!,
        UIImage(named: "Netherlands.png")!,
        UIImage(named: "Norway.png")!,
        UIImage(named: "Poland.png")!,
        UIImage(named: "Portugal.png")!,
        UIImage(named: "Romania.png")!,
        UIImage(named: "Russia.png")!,
        UIImage(named: "San_Marino.png")!,
        UIImage(named: "Serbia.png")!,
        UIImage(named: "Slovakia.png")!,
        UIImage(named: "Slovenia.png")!,
        UIImage(named: "Spain.png")!,
        UIImage(named: "Sweden.png")!,
        UIImage(named: "Switzerland.png")!,
        UIImage(named: "Ukraine.png")!,
        UIImage(named: "United_Kingdom.png")!,
        UIImage(named:"Vatican_City.png")!
    ]
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        dpdCountry.delegate = self
        dpdCountry.dataSource = self
        lblImage.userInteractionEnabled = true
        lblImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "displayImg:"))
        let randomIndex = Int(arc4random_uniform(UInt32(flagImage.count)))
        self.lblImage.image = flagImage[randomIndex]
          currentImage = countryList[0][randomIndex]
        txtboxCountry.delegate=self
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ReadCountryOnSelection()
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return countryList.count
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countryList[component].count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countryList[component][row]
    }
    @IBAction func displayImg(sender: UITapGestureRecognizer) {
        let randomIndex = Int(arc4random_uniform(UInt32(flagImage.count)))
        self.lblImage.image = flagImage[randomIndex]
        currentImage = countryList[0][randomIndex]
        txtboxCountry.text = ""
    }
    func ReadCountryOnSelection()
    {
        let countryName = countryList[0][dpdCountry.selectedRowInComponent(0)]
        if(countryName == currentImage)
        {
            txtboxCountry.text = countryName+" : Correct"
        }
        else if(countryName != currentImage)
        {
            txtboxCountry.text = countryName+" : Incorrect"
        }
    }
    func textFieldShouldBeginEditing(txtboxCountry: UITextField) -> Bool {
        
        txtboxCountry.text = ""
        return true;
    }
    func textFieldDidEndEditing(textField: UITextField) {
        if(txtboxCountry.text!.lowercaseString.containsString("correct"))
        {
            txtboxCountry.text=""
        }
        else
        {
        if(txtboxCountry.text!.lowercaseString == currentImage.lowercaseString)
        {
            txtboxCountry.text = currentImage+" : Correct"
        }
        else
        {
            txtboxCountry.text =  txtboxCountry.text!+" : Incorrect"
        }
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if(txtboxCountry.text!.lowercaseString.containsString("correct"))
        {
            txtboxCountry.text=""
        }
        else
        {
            if(txtboxCountry.text!.lowercaseString == currentImage.lowercaseString)
            {
                txtboxCountry.text = currentImage+" : Correct"
            }
            else
            {
                txtboxCountry.text = txtboxCountry.text!+" : Incorrect"
            }
        }

        return true
    }
    func textFieldShouldClear(textField: UITextField) -> Bool {
        txtboxCountry.text = ""
        return true
    }
}

