
import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setupTabBar()
    }
    
    func setupTabBar(){
        let sheludeVC = createNavController(vc: SheludeController(), itemName: "Shedule", itemImage: "calendar.badge.clock")
        let tasksVC = createNavController(vc: TasksController(), itemName: "Tasks", itemImage: "text.badge.checkmark")
        let contactsVC = createNavController(vc: ContactsController(), itemName: "Contacts", itemImage: "rectangle.stack.person.crop")
        viewControllers = [sheludeVC, tasksVC, contactsVC]

    }
    
    
    func createNavController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController{
        let item = UITabBarItem(title: itemName, image:UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)) , tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        return navController
    }
    

}

