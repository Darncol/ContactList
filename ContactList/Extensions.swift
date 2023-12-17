//
//  Extensions.swift
//  ContactList
//
//  Created by Alexey Solop on 17.12.2023.
//

import UIKit

extension UITableViewController {
    func createCell(
        for identifier: String,
        image: String? = nil,
        text: String,
        indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = text
        
        if let image = image {
            content.image = UIImage(systemName: image)
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
