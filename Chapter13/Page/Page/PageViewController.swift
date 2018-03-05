//
//  PageViewController.swift
//  Page
//
//  Created by Tobioka on 2017/11/09.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {
    
    /// [marker1]
    var controllers: [UIViewController]!
    /// [marker1]

    /// [marker2]
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self

        // Storyboardからfirst、second、thirdのコントローラーを取得
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        controllers = [
            storyboard.instantiateViewController(withIdentifier: "first"),
            storyboard.instantiateViewController(withIdentifier: "second"),
            storyboard.instantiateViewController(withIdentifier: "third")
        ]

        // 最初に表示されるコントローラーを指定
        setViewControllers([controllers[0]], direction: .forward, animated: false, completion: nil)
    }
    /// [marker2]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

/// [marker3]
extension PageViewController: UIPageViewControllerDataSource {
/// [marker3]

    /// [marker4]
    // 現在のコントローラーの前にあるコントローラーを定義
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let index = controllers.index(of: viewController), index > 0 {
            return controllers[index - 1]
        }
        return nil
    }
    
    // 現在のコントローラーの次にあるコントローラーを定義
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let index = controllers.index(of: viewController), index < controllers.count - 1 {
            return controllers[index + 1]
        }
        return nil
    }
    /// [marker4]

    /// [marker5]
    // ページ数
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return controllers.count
    }

    // 現在のページ
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        if let viewController = viewControllers?.first,
            let index = controllers.index(of: viewController) {
            return index
        }
        return 0
    }
    /// [marker5]
}
