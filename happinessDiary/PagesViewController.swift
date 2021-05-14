//
//  PageViewController.swift
//  happinessDiary
//
//  Created by BeomSeok on 2021/05/01.
//

import UIKit
import SnapKit
import FLEX

class PagesViewController: UIPageViewController {
    
    var pages: [UIViewController] = []

    private let pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.backgroundColor = .orange
        pc.translatesAutoresizingMaskIntoConstraints = false
        return pc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPageViewController()
        setPageControl()
    }
    
    private func setPageViewController() {
        dataSource = self
        delegate = self
        
        let calendarVC = CalendarPageViewController(pageType: .calendar)
        calendarVC.view.tag = 0
        
        let detailVC = DetailPageViewController(pageType: .detail)
        detailVC.view.tag = 1
        
        let totalVC = TotalPageViewController(pageType: .total)
        totalVC.view.tag = 2
        self.pages = [calendarVC, detailVC, totalVC]
        
        setViewControllers([calendarVC], direction: .forward, animated: true, completion: nil)
    }
    
    private func setPageControl() {
        pageControl.numberOfPages = pages.count
        
        view.addSubview(pageControl)
        pageControl.snp.remakeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview().offset(-100)
        }
    }
}

extension PagesViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let index = pages.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = index > 0 ? index - 1 : pages.count - 1
        return pages[nextIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = pages.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = (index + 1) % pages.count
        return pages[nextIndex]
    }
}

extension PagesViewController: UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            didFinishAnimating finished: Bool,
                            previousViewControllers: [UIViewController],
                            transitionCompleted completed: Bool) {
        guard completed else { return }
        if let vc = pageViewController.viewControllers?.first {
            pageControl.currentPage = vc.view.tag
        }
    }
}

extension PagesViewController {
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            FLEXManager.shared.showExplorer()
        }
    }
}
