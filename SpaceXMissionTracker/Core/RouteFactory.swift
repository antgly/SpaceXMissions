import UIKit
class RouteFactory {
    static func createRootViewController(child: UIViewController = createMissionsListViewController(dummyData: false)) -> UIViewController {
        RootNavigationViewController(rootViewController: child)
    }
    
    static func createMissionsListViewController(dummyData: Bool = false) -> UIViewController {
        let viewController = MissionsListTableViewController()
        if dummyData {
            viewController.viewModel = DummyMissionsListViewModel()
        } else {
            viewController.viewModel = MissionsListViewModelImpl()
        }
        return viewController
    }
}
