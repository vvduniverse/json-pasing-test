//
//  ViewController.swift
//  json-pasing-test
//
//  Created by Vahtee Boo on 07.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var currenciess: [AllCurrencies] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let localData = self.readLocalFile(forName: "data") {
            self.parse(jsonData: localData)
        }
        
    }


}

extension ViewController {
   
    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        return nil
    }
    
    
    private func parse(jsonData: Data) {


        do {
            let decodeData = try JSONDecoder().decode(Currencies.self, from: jsonData)
            
            for i in decodeData.data.indices {
                let currency = AllCurrencies.init(name: decodeData.data[i].name,
                                                  symbol: decodeData.data[i].symbol,
                                                  price: decodeData.data[i].quote.usd.price,
                                                  marketCap: decodeData.data[i].quote.usd.marketCap)
                currenciess.append(currency)
              
                print(currenciess)
            }



        } catch {
            print("decode error")
        }
//        return currencies
    }
    
    private func loadJson(fromURLString urlString: String,
                          completion: @escaping (Result<Data, Error>) -> Void) {
        if let url = URL(string: urlString) {
            let urlSession = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                if let error = error {
                    completion(.failure(error))
                }
                
                if let data = data {
                    completion(.success(data))
                }
            }
            
            urlSession.resume()
        }
    }
    
}
