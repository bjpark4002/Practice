//
//  ViewController.swift
//  SearchBar
//
//  Created by Bumjin Park on 9/26/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var wordList: [String] = ["냉면","계란","스파게티","라면","떡볶이","튀김","된장찌개","사골"]
    var filteredWordList: [String] = []
    
    var isFiltered: Bool = false
    
    
    @IBOutlet var searchResultTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        searchResultTableView.delegate = self
        searchResultTableView.dataSource = self
        
        searchResultTableView.register(UINib(nibName: "WordCell", bundle: nil), forCellReuseIdentifier: "WordCell")
        
        
        let searchC = UISearchController(searchResultsController: nil)
        
        searchC.searchResultsUpdater = self
        
        
        self.navigationItem.searchController = searchC
        self.navigationItem.hidesSearchBarWhenScrolling = false
        
        
        
    }


}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch isFiltered {
        case true:
            return filteredWordList.count
        case false:
            return wordList.count
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell") as! WordCell
        
        
        switch isFiltered {
        case true:
            cell.wordLabel.text = filteredWordList[indexPath.row]
        case false:
            cell.wordLabel.text = wordList[indexPath.row]
        }
        
        
        
        return cell
    }
    
    
}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        if let hasText = searchController.searchBar.text?.lowercased(){
            if hasText.isEmpty{
                isFiltered = false
            }else{
                isFiltered = true
                
//                filteredWordList = wordList.filter({ (element) -> Bool in
//                    return element.contains(hasText)
//                })
                filteredWordList = wordList.filter({ $0.contains(hasText)})

                
            }
            searchResultTableView.reloadData()
        }
    }
    
    
}
