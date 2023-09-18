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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initCounter()
        initData()
    }

    
    func initData() {
    
        items = [Item(count: 20, name: "Earplugs", price: "100$"),
             
                 Item(count: 2, name: "Kitchen", price: "2000$"),
             
                 Item(count: 14, name: "Sofa", price: "500$"),
             
                 Item(count: 43, name: "Chair", price: "230$")
    
    ]
}
    
    private func initCounter() {
        
        view.addSubview(plusButton)
        view.addSubview(minusButton)
        view.addSubview(countLabel)
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        minusButton.translatesAutoresizingMaskIntoConstraints = false
        
        //текст каунтер лейбл
        countLabel.text = "\(counter)"

        NSLayoutConstraint.activate([
       
                      // констрайнты счктчика
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
    
//    private func initUI() {
//        view.addSubview(minusButton)
//        view.addSubview(plusButton)
//        view.addSubview(countLabel)
//        countLabel.text = "\(counter)"
//        minusButton.translatesAutoresizingMaskIntoConstraints = false
//        plusButton.translatesAutoresizingMaskIntoConstraints = false
//        countLabel.translatesAutoresizingMaskIntoConstraints = false
//        //countLabel.translatesAutoresizingMaskIntoConstraints = false
//
//
//
//
//            //countLabel.translatesAutoresizingMaskIntoConstraints = false
//            NSLayoutConstraint.activate([
//
//
//                countLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 180),
//                countLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
//
//                //констрейнты кномпки минус
//                minusButton.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
//                minusButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
//
//                //констрейнты кномпки плюс
//                plusButton.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 250),
//                plusButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
//        ])
//        //добавление таргета к кнопке
//        minusButton.addTarget(self, action: #selector(minus), for: .touchUpInside)
//        plusButton.addTarget(self, action: #selector(plus), for: .touchUpInside)
//
//    }
//
//
//
//    // кнопка плюс
//    @objc func plus() {
//        if counter < item!.count {
//            counter += 1
//            countLabel.text = "\(counter)"
//        }
//    }
//    // кнопка минус
//    @objc func minus() {
//        if counter > 0 {
//            counter -= 1
//            countLabel.text = "\(counter)"
//        }
//    }

}

