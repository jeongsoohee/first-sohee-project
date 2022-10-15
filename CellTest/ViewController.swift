//
//  ViewController.swift
//  CellTest
//
//  Created by 정소희 on 2022/10/15.
//

import UIKit

class ViewController: UIViewController {

    let array = ["Apple", "Bananas", "Oranges", "Apple2", "Bananas3", "Oranges4"]
    
    let searchController = UISearchController()
    var filterData: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "안녕"
        setUI()
    }

    func setUI() {
        tableView.delegate = self
        tableView.dataSource = self
        
        //업데이트를 상시로 확인하는 애 (원래 옛날에는 이 기능이 없었음)
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        
        //searchBar.delegate = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.name.text = array[indexPath.row]
        
        return cell
    }
    
}

extension ViewController: UISearchBarDelegate, UISearchResultsUpdating {
    
    //업데이트 해주는 함수
    func updateSearchResults(for searchController: UISearchController) {
        
        guard let text = searchController.searchBar.text else { return }
        print(text)
    }
    //키보드 하나를 누를때마다 호출되는 함수 (글자와 관련된 검색창)
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filterData = []
        
        if searchText == "" {
            
            filterData = array
            
        } else {
            
            for fruit in array {
                if fruit == searchText {
                    filterData.append(searchText)
                }
            }
        }
        tableView.reloadData()
    }
    
}
