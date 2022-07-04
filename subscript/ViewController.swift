//
//  ViewController.swift
//  subscript
//
//  Created by Kullanici on 4.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let result = hesapla(carpan: 3)
        print("6 kere 3 = \(result[6])")
        
        
        var event = Event()
        print("3. index değeri = \(event[2])")
        
        event[2] = "yüzme"
        print("3. index değeri = \(event[2])")
    }


}

struct hesapla {
    let carpan : Int
    
    subscript(satirsayisi:Int) -> Int{
        return carpan*satirsayisi  //geriye değer döndüreceği için buraya return yazdık
        
    }
}

struct Event{
    var events = ["futbol","konser","sinema","tiyatro"]
    
    subscript(eventindex:Int)-> String{
        get{
            return events[eventindex]
        }
        set(newvalue){
          events[eventindex] = newvalue
        }
    }
}
