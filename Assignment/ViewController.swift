//
//  ViewController.swift
//  Assignment
//
//  Created by Thapliyal, Abhilasha on 27/05/22.
//

import UIKit

class ViewController: UIViewController {
    var interactor: UserInteractorLogic?
    let baseUrlString = "http://ejabali.com/service.asmx"
    let endPoint1 = "/maincategory"
    let endPoint2 = "/getOrderHistory"
    let endPoint3 = "/maincHomePage"
    private static let jsonDecoder: JSONDecoder = {
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .formatted(Utils.iso8601Formatter)
            return decoder
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
//        let dispatchGroup = DispatchGroup()
//
//        dispatchGroup.enter()
//        dispatchGroup.enter()
//        dispatchGroup.enter()
        
        self.interactor?.getUserDetails(baseUrl: baseUrlString, endPoint:endPoint1, completionHandler: { success, userData, error in
            // dispatchGroup.leave()
            print(userData?.data?.email)
        })
//        self.interactor?.getUserDetails(baseUrl: baseUrlString, endPoint:endPoint2, completionHandler: { success, userData, error in
//           // dispatchGroup.leave()
//            print(userData?.data?.email ?? "")
//        })
//        self.interactor?.getUserDetails(baseUrl: baseUrlString, endPoint:endPoint3, completionHandler: { success, userData, error in
//            // dispatchGroup.leave()
//            print(userData?.data?.email ?? "")
//        })
//         // dispatchGroup.notify(queue: .main) {
//
//       // }
        
        
        let x = readLine()
        let y = readLine()
        var dummyArray = [String]()
        x?.forEach { char in
            // print(char)
            if ((y?.contains(char)) != nil) {

            } else {
                dummyArray.append("\(char)")
            }
        }
        print(dummyArray)

        dummyArray.removeAll()

        y?.forEach { char in
            // print(char)
            if ((x?.contains(char)) != nil) {

            } else {
                dummyArray.append("\(char)")
            }
        }
        print(dummyArray)
    }
    
    private func configure() {
        let interactor = UserInteractor()
        
        interactor.display = self
        self.interactor = interactor
    }
}

extension ViewController: UserInteractorLogic {
    func getUserDetails(baseUrl: String, endPoint: String, completionHandler: @escaping (Bool, UserModel?, String?) -> Void) {
    }
}



