//
//  ViewController.swift
//  SelfWork
//
//  Created by Sultanbai Almaz on 18/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    var item: Item?
    
    public var items: [Item] = []
    
    var counter = 1 //счетчик
    
    private let minusButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "minus"), for: .normal)
        return view
    }()
    
    private let plusButton :UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "plus"), for: .normal)
        return view
    }()
    private let countLabel: UILabel = {
      let view = UILabel()
        
        view.font = .boldSystemFont(ofSize: 17)
        return view
    }()
    private let countLabel2: UILabel = {
      let view = UILabel()
        
        view.font = .boldSystemFont(ofSize: 17)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initCounter()
        initData()
    }

    
    func initData() {
    
        items = [Item(count: 20, name: "Наполетана", price: "100$"),
             
                 Item(count: 2, name: "Пепперони", price: "2000$"),
             
                 Item(count: 14, name: "БеллаСыр", price: "500$"),
             
                 Item(count: 43, name: "4Сыра", price: "230$")
    
    ]
}
    
    private func initCounter() {
        
        view.addSubview(plusButton)
        view.addSubview(minusButton)
        view.addSubview(countLabel)
        view.addSubview(countLabel2)
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        minusButton.translatesAutoresizingMaskIntoConstraints = false
        countLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        //текст каунтер лейбл
        countLabel.text = "\(counter)"
        countLabel2.text = "\(counter* что здесь писать?)"

        NSLayoutConstraint.activate([
       
                      // констрайнты первого счетчика
                       countLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 180),
                       countLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
                       
                       // констрайнты второго счетчика
                        countLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 180),
                        countLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
       
                       //констрейнты кномпки минус
                       minusButton.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
                       minusButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
       
                       //констрейнты кномпки плюс
                       plusButton.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 250),
                       plusButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
               ])
        
        plusButton.addTarget(self, action: #selector(plus), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(minus), for: .touchUpInside)
        
    }
    // кнопка плюс
    @objc func plus() {
        if counter < item!.count {
            counter += 1
            countLabel.text = "\(counter)"
        }
    }
    // кнопка минус
    @objc func minus() {
        if counter > 0 {
            counter -= 1
            countLabel.text = "\(counter)"
        }
    }
    

}

