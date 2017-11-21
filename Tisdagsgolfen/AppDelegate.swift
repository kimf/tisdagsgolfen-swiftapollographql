import UIKit
import Apollo

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let apollo = ApolloClient(url: URL(string: "https://www.tisdagsgolfen.se/api/graphql")!)


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        apollo.cacheKeyForObject = { $0["id"] }
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.backgroundColor = UIColor.lightGray

        let navigationController = UINavigationController()
        // SwipeNavigationController(initWith: SwipeNavigationController)
        navigationController.navigationBar.prefersLargeTitles = true
        
        apollo.fetch(query: InitialQueryQuery()) {(result, error) in
            guard let data = result?.data else { return }
            
            let seasonPicker = SeasonPickerController(seasonsFromApi: data.seasons)
            seasonPicker.title = "Säsonger"
            
            let currentSeason = data.seasons[1] // TODO: This is just to test out. should be find || 0
            
            let mainView = MainViewController(seasonFromApi: currentSeason)
            mainView.title = "\(currentSeason.name)"
            navigationController.setViewControllers([seasonPicker, mainView], animated: true)
        }
        
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

