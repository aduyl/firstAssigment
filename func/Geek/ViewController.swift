//
//  ViewController.swift
//  Geek
//
//  Created by mac on 26.02.2021.
//

import UIKit
func EquationSolution(_ a: Float, _ b: Float, _ c: Float){
    let dis = (pow(b, 2) - 4 * a * c)
    if(a != 0){
        if(dis > 0){
        print("Решениями являются " + String( (-1 * b + dis.squareRoot()) / (2 * a)) + " и " + String( (-1 * b - dis.squareRoot()) / (2 * a)))
            
        }else if( dis == 0){
            print("Решением является " + String(-1 * b / (2 * a)))
        }else{
            print("Решение пусто")
        }
    } else{
        print("Решением является " + String(-1 * c / b ))
    }
    
}
func Triangle(_ a: Float, _ b: Float){
    let c = (pow(a, 2) + pow(b, 2)).squareRoot()
    print("Гипотенуза равна " + String(c))
    print("Площадь равна " + String(a / 2 * c) )
    print("Периметр равен " + String(a + b + c))
    
}
func BancDeposit(_ deposit: Float, _ percent: Float){
    var dept = deposit
    for _ in 1...5 {
        for _ in 1...12{
            dept = dept + dept * percent / 100
        }
    }
    print("После пяти лет ежемесячных начислений сумма вклада составляет " + String(Int(dept)) + " рублей")
}
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        EquationSolution(1, 6, -7)
        Triangle(3, 4)
        BancDeposit(500, 1)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

