import UIKit

/*
┌─────────────────────────────────────┐
│                                     │
│                                     │
│                                     │
│               image                 │
│                                     │
│                                     │
│                                     │
├─────────────────────────────────────┤
│  2020 Acura ILX                     │
│                                     │
│  Centreville VA                     │
│                                     │
│        ┌───────────────────┐        │
│        │  (973) 585-4290   │        │
│        └───────────────────┘        │
└─────────────────────────────────────┘
 */

// ENDPOINT: https://carfax-for-consumers.firebaseio.com/assignment.json

final class ListingTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getListings()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
    
    func getListings() {
        let url = URL(string: "https://carfax-for-consumers.firebaseio.com/assignment.json")!
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
        }.resume()
    }
}
