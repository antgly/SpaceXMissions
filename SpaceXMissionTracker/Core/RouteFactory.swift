import UIKit
class RouteFactory {
    static func createRootViewController(child: UIViewController = createMissionsListViewController(dummyData: true)) -> UIViewController {
        RootNavigationViewController(rootViewController: child)
    }
    
    static func createMissionsListViewController(dummyData: Bool = false) -> UIViewController {
        let viewController = MissionsListTableViewController()
        if dummyData {
            viewController.viewModel = DummyMissionsListViewModel()
        }
        return viewController
    }
}
