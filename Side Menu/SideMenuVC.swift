//
//  SideMenuVC.swift
//  Side Menu
//
//  Created by Sibo Cai on 10/19/18.
//  Copyright © 2018 Sibo Cai. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row{
        case 0:NotificationCenter.default.post(name: NSNotification.Name("ShowProfile"), object: nil)
        case 1:NotificationCenter.default.post(name: NSNotification.Name("ShowSettings"), object: nil)
        case 2:NotificationCenter.default.post(name: NSNotification.Name("ShowSignIn"), object: nil)
        default: break
        }
    }
}
