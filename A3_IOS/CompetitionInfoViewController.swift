//
//  CompetitionInfoViewController.swift
//  A3_IOS
//
//  Created by Akhilesh Bitla on 3/11/25.
//

import UIKit

class CompetitionInfoViewController: UIViewController {

    
    @IBOutlet weak var compInfoSegCtrl: UISegmentedControl!
    
    @IBOutlet weak var lineupView: UIView!
    
    @IBOutlet weak var judgingView: UIView!
    
    @IBOutlet weak var mediaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSegmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            case 0:
                showView(for: .lineup)
            case 1:
                showView(for: .judging)
            case 2:
                showView(for: .media)
            default:
                break
            }
        }

    enum ViewType {
        case lineup, judging, media
    }

    private func showView(for type: ViewType) {
        lineupView.isHidden = type != .lineup
        judgingView.isHidden = type != .judging
        mediaView.isHidden = type != .media
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
