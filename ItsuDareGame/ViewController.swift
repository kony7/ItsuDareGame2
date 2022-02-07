//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by SeinaKonishi on 2022/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["授業中に","スクールに","LA前に","キャンプに"]
    let dokoArray: [String] = ["曽根崎新地で","オフィスで","机の上で","棚の中で"]
    let daregaArray: [String] = ["あの社員が","小林純也が","LA講師が","あいつが"]
    let doshitaArray: [String] = ["踊り始めた","寝坊した","寝てた","寿司打した"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        
        itsuLabel.text = itsuArray[index]
        dokoLabel.text = dokoArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index + 1
        
        if index > 3{
            index = 0
        }
    }
    
    @IBAction func reset(){
        
        index = 0
        
        itsuLabel.text = "--"
        dokoLabel.text = "--"
        daregaLabel.text = "--"
        doshitaLabel.text = "--"
        
        
    }
    
    @IBAction func random(){
        
        let itsuIndex = Int.random(in: 0...3)
        let dokoIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
    }


}

