//
//  ViewController.swift
//  UIView.Transition
//
//  Created by Reza Koushki on 02/09/2022.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var emojiLabel: UILabel!
	@IBOutlet weak var delaySwitch: UISwitch!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	func addTransition(emoji: String) {
		UIView.transition(
				with: emojiLabel,
				duration: 0.5,
				options: .transitionFlipFromBottom) {
					self.emojiLabel.text = emoji
				}
	}

	@IBAction func ghostButtonPressed(_ sender: UIButton) {
		if delaySwitch.isOn {
			DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
				self.addTransition(emoji: "👻")
			}
		} else {
			addTransition(emoji: "👻")
		}
	}
	
	@IBAction func pumpkinButtonPressed(_ sender: UIButton) {
		if delaySwitch.isOn {
			DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
				self.addTransition(emoji: "🎃")
			}
		} else {
			addTransition(emoji: "🎃")
		}
	}
}

