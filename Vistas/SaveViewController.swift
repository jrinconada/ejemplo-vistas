//
//  SaveViewController.swift
//  Vistas
//
//  Created by alumnos on 29/10/2019.
//  Copyright © 2019 alumnos. All rights reserved.
//

import UIKit

class SaveViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        load()
    }

    @IBAction func save(_ sender: UIButton) {
        let person = Person(name: name.text!, age: Int(age!.value))
        let encoder = JSONEncoder()
        if let data = try? encoder.encode(person) {
            UserDefaults.standard.set(data, forKey: "persona")
        }
    }
    
    func load() {
        let data = UserDefaults.standard.object(forKey: "persona") as! Data
        let decoder = JSONDecoder()
        if let person = try? decoder.decode(Person.self, from: data) {
            name.text = person.name
            age.value = Float(person.age)
        }
    }
}
