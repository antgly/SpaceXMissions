import UIKit
class RouteFactory {
    static func createRootViewController(child: UIViewController = createMissionsListViewController()) -> UIViewController {
        RootNavigationViewController(rootViewController: child)
    }
    
    static func createMissionsListViewController() -> UIViewController {
        MissionsListTableViewController()
    }
}
