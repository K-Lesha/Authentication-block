//
//  SceneDelegate.swift
//  Authentication block
//
//  Created by Алексей Коваленко on 11.10.2022.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        //Logut manually if needed
//        do {
//            try Auth.auth().signOut()
//        } catch {
//            print("can't deloggin")
//        }
        
        print("Auth check is user loginned")
        Auth.auth().addStateDidChangeListener { auth, user in
            if user == nil {
                print("user == nil, first module initialization")
                let navigationController = UINavigationController()
                let assemblyBuilder = AssemblyModuleBuilder()
                let firebaseService = FirebaseService()
                let networkService = NetworkService(firebaseServise: firebaseService)
                let router = Router(navigationController: navigationController, assemblyBuilder: assemblyBuilder, networkService: networkService)
                router.showFirstModule()
                self.window?.rootViewController = navigationController
            } else {
                print("user is loginned, second module initialization")
                guard let user = user else {return}
                let navigationController = UINavigationController()
                let assemblyBuilder = AssemblyModuleBuilder()
                let firebaseService = FirebaseService()
                let networkService = NetworkService(firebaseServise: firebaseService)
                let router = Router(navigationController: navigationController, assemblyBuilder: assemblyBuilder, networkService: networkService)
                router.showSecondModule(userUID: user.uid)
                self.window?.rootViewController = navigationController            }
        }
        window?.makeKeyAndVisible()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    
}
