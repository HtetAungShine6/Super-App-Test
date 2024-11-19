//
//  ViewController.swift
//  SuperAppOne
//
//  Created by Htet Aung Shine on 14/11/2024.
//

import UIKit
import MiniAppOne

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
        title = "Super App Home"
        
        // Create and configure the booking button
        let bookingButton = UIButton(type: .system)
        bookingButton.setTitle("Book a Movie", for: .normal)
        bookingButton.addTarget(self, action: #selector(showBookingScreen), for: .touchUpInside)
        
        // Add the button to the view and set constraints
        bookingButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bookingButton)
        
        NSLayoutConstraint.activate([
            bookingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bookingButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    // Action to present the mini app booking screen
    @objc func showBookingScreen() {
        // Call the mini app’s public function to get the booking view controller
        let bookingVC = TicketBookingMiniApp.bookingInputView()
        
        // Present the booking screen modally
        present(bookingVC, animated: true, completion: nil)
    }
}
