//
//  ViewController.swift
//  MS_FormControls
//
//  Created by iam.manojshrestha@gmail.com on 04/09/2019.
//  Copyright (c) 2019 iam.manojshrestha@gmail.com. All rights reserved.
//

import UIKit
import MS_FormControls

class ViewController: UIViewController, MSDropDownDelegate{
    func dropdownSelected(tagId: Int, answer: String, value: Int, isSelected: Bool) {
        print(answer)
    }
    
    @IBOutlet weak var ddlMultiSelect: MSDropDown!
    @IBOutlet weak var ddlSingleSelect: MSDropDown!
    
    let dropdownSize   = CGSize(width: 400, height: 200)
    
    let ddlOptions1 : [KeyValueModel] = [KeyValueModel(key: 1, value: "Attend next Tomorrowland"),
                                         KeyValueModel(key: 2, value: "Swim with whale shark"),
                                         KeyValueModel(key: 3, value: "Trekking in Nepal Himalaya"),
                                         KeyValueModel(key: 4, value: "Taste all types of liquor")]
    
    let ddlOptions2 : [KeyValueModel] = [KeyValueModel(key: 1, value: "Philippines"),
                                         KeyValueModel(key: 2, value: "Nepal"),
                                         KeyValueModel(key: 3, value: "USA - Miami"),
                                         KeyValueModel(key: 4, value: "USA - Hawai")]

                                    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Setting dropdowns
        self.ddlMultiSelect.delegate = self
        self.ddlMultiSelect.keyValues = self.ddlOptions1
        self.ddlMultiSelect.isMultiSelect = true
        //self.ddlMultiSelect.multiSelectSeparator = ", "
        // Do any additional setup after loading the view, typically from a nib.
        
        self.ddlSingleSelect.delegate = self
        self.ddlSingleSelect.keyValues = self.ddlOptions2
        self.ddlSingleSelect.isMultiSelect = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ddlClicked(_ sender: UIButton) {
        let controller = SelectorTableViewController(keyValue: self.ddlOptions1, isMultiselect: false)
        //controller.delegate = self
        controller.preferredContentSize = self.dropdownSize
        showPopup(controller, sourceView: sender)
    }
    
    private func showPopup(_ controller: UIViewController, sourceView: UIView) {
        let presentationController = AlwaysPresentAsPopover.configurePresentation(forController: controller)
        presentationController.sourceView = sourceView
        presentationController.sourceRect = sourceView.bounds
        presentationController.permittedArrowDirections = [.down, .up]
        
        let topVC = getTopViewController()
        topVC?.present(controller, animated: true)
    }
    
    func getTopViewController() -> UIViewController? {
        var topController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController
        while topController?.presentedViewController != nil {
            topController = topController?.presentedViewController
        }
        return topController
    }
}

