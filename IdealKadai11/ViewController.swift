//
//  ViewController.swift
//  IdealKadai11
//
//  Created by 中野翔太 on 2022/02/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var prefectureNameLabel: UILabel!


    @IBAction private func changeButton(_ sender: Any) {
        guard let navigationController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? UINavigationController,
              let secondViewcontroller = navigationController.topViewController as? PrefecturesViewController else { return }
        //　値渡し
        secondViewcontroller.delegate = self
        present(navigationController, animated: true, completion: nil)
    }
    @IBAction private  func Cancel(segue: UIStoryboardSegue) {
        
    }

}
extension ViewController: PrefectureNameDelegate {
    func Prefecture(name: String) {
        prefectureNameLabel.text = name
        dismiss(animated: true, completion: nil)
    }


}
