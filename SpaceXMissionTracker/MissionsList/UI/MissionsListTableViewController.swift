import UIKit

class MissionsListTableViewController: UITableViewController {
    var viewModel: MissionsListViewModel?
    
    private var currentFilter: MissionListFilterOptions = .default
    private var currentSort: MissionListSortOptions = .default
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
        let filterMenuHandler: (UIAction) -> Void = { [weak self] action in
            if let self = self {
                self.currentFilter = .year(action.title) // TODO: fix identifier is a get-only property issue and filterMenuHandler action to use UIAction subclass, hence using the title to save time
                self.loadMissions()
            }
        }
        let actionForYear: (_ year: String) -> UIAction = { year in
            return UIAction(title: year, image: UIImage(systemName: "calendar.day.timeline.left"), handler: filterMenuHandler)
        }
        
        let sortMenuHandler: (UIAction) -> Void = { [weak self] action in
            if let self = self {
                self.currentSort = {
                    switch action.title { // TODO: Use UIAction subclass to switch on identifer as identifier is get-only
                    case "Rocket Name":
                        return .byRocketName
                    case "Year":
                        return .byYear
                    default:
                        return .default
                    }
                }()
                self.loadMissions()
            }
        }
        let filterMenu = UIMenu(title: "", children: [
            actionForYear("2022"),
            actionForYear("2021"),
            actionForYear("2020"),
            actionForYear("2019"),
            actionForYear("2018"),
            actionForYear("2017")
        ])
        let sortMenu = UIMenu(title: "", children: [
            UIAction(title: "Year", image: UIImage(systemName: "calendar.day.timeline.leading"), handler: sortMenuHandler),
            UIAction(title: "Rocket Name", image: UIImage(systemName: "airplane.departure"), handler: sortMenuHandler)
        ])
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: nil, image: UIImage(systemName: "arrow.up.arrow.down"), primaryAction: nil, menu: sortMenu)
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: nil, image: UIImage(systemName: "line.3.horizontal.decrease.circle"), primaryAction: nil, menu: filterMenu)
        loadMissions()
    }
    
    private func loadMissions() {
        viewModel?.listOfSpaceXMissions(filter: currentFilter, sort: currentSort) {[weak self] in
            self?.missions = $0
        }
    }
    
    private func configureCell(_ cell: UITableViewCell, mission: Mission) {
        cell.textLabel?.text =
        """
        Launch Year: \(mission.launchYear)
        Rocket Name: \(mission.rocketName)
        Mission Name: \(mission.name)
        """
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        missions.isEmpty ? 0 : 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return missions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row > missions.count - 1 {
            fatalError("Cannot create cell with mission data being inconsistent")
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.numberOfLines = 0
        configureCell(cell, mission: missions[indexPath.row])
        return cell
    }
}
