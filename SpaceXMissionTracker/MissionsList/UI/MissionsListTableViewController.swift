import UIKit

class MissionsListTableViewController: UITableViewController {
    var viewModel: MissionsListViewModel?
    
    private var missions: [Mission] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }()
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        title = "List of SpaceX Missions"
        
        viewModel?.listOfSpaceXMissions(filter: nil, sort: nil) {[weak self] in
            self?.missions = $0
        }

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        missions.isEmpty ? 0 : 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return missions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = "Date: \(dateFormatter.string(from: missions[row].date))"
        return cell
    }
}
