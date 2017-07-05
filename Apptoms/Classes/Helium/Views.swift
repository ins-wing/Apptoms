//
//  Views.swift
//  Helium
//
//  Created by WinG@Apptoms on 1/7/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import UIKit

@IBDesignable public class AtView: UIView {
	@IBInspectable var cornerRadius: CGFloat {
		set {
			clipsToBounds = (newValue != 0)

			if (newValue < 0) {
				layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
			}
			else {
				layer.cornerRadius = newValue
			}
		}
		get {
			return layer.cornerRadius
		}
	}

	@IBInspectable var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}

	@IBInspectable var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}

	@IBInspectable var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}

	override public func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()

		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}

		layer.borderWidth = borderWidth
		layer.borderColor = borderColor?.cgColor
	}
	
	override public func awakeFromNib() {
		super.awakeFromNib()
		
		
	}
	
	override public func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}

@IBDesignable public class AtImageView: UIImageView {
	@IBInspectable var cornerRadius: CGFloat {
		set {
			clipsToBounds = (newValue != 0)
			
			if (newValue < 0) {
				layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
			}
			else {
				layer.cornerRadius = newValue
			}
		}
		get {
			return layer.cornerRadius
		}
	}
	
	@IBInspectable var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}
	
	@IBInspectable var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}
	
	override public func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
		
		layer.borderWidth = borderWidth
		layer.borderColor = borderColor?.cgColor
	}
	
	override public func awakeFromNib() {
		super.awakeFromNib()
		
		
	}
	
	override public func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}

@IBDesignable public class AtButton: UIButton {
	@IBInspectable var cornerRadius: CGFloat {
		set {
			clipsToBounds = (newValue != 0)
			
			if (newValue < 0) {
				layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
			}
			else {
				layer.cornerRadius = newValue
			}
		}
		get {
			return layer.cornerRadius
		}
	}
	
	@IBInspectable var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}
	
	@IBInspectable var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}
	
	override public func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
		
		layer.borderWidth = borderWidth
		layer.borderColor = borderColor?.cgColor
	}
	
	override public func awakeFromNib() {
		super.awakeFromNib()
		
		
	}
	
	override public func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}

@IBDesignable public class AtLabel: UILabel {
	@IBInspectable var cornerRadius: CGFloat {
		set {
			clipsToBounds = (newValue != 0)
			
			if (newValue < 0) {
				layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
			}
			else {
				layer.cornerRadius = newValue
			}
		}
		get {
			return layer.cornerRadius
		}
	}
	
	@IBInspectable var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}
	
	@IBInspectable var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}
	
	override public func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
		
		layer.borderWidth = borderWidth
		layer.borderColor = borderColor?.cgColor
	}
	
	override public func awakeFromNib() {
		super.awakeFromNib()
		
		
	}
	
	override public func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}

@IBDesignable public class AtTextField: UITextField {
	@IBInspectable var cornerRadius: CGFloat {
		set {
			clipsToBounds = (newValue != 0)
			
			if (newValue < 0) {
				layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
			}
			else {
				layer.cornerRadius = newValue
			}
		}
		get {
			return layer.cornerRadius
		}
	}
	
	@IBInspectable var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}
	
	@IBInspectable var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}
	
	override public func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
		
		layer.borderWidth = borderWidth
		layer.borderColor = borderColor?.cgColor
	}
	
	override public func awakeFromNib() {
		super.awakeFromNib()
		
		
	}
	
	override public func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}

@IBDesignable public class AtTextView: UITextView {
	/*
	private var placeHolderLabel: AtLabel?
	@IBInspectable var placeHolder: String {
		set {
			if (placeHolderLabel == nil) {
				
			}
		}
		get {
			return placeHolderLabel?.text ?? ""
		}
	}
	*/
	
	@IBInspectable var cornerRadius: CGFloat {
		set {
			clipsToBounds = (newValue != 0)
			
			if (newValue < 0) {
				layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
			}
			else {
				layer.cornerRadius = newValue
			}
		}
		get {
			return layer.cornerRadius
		}
	}
	
	@IBInspectable var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}
	
	@IBInspectable var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}
	
	override public func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
		
		layer.borderWidth = borderWidth
		layer.borderColor = borderColor?.cgColor
	}
	
	override public func awakeFromNib() {
		super.awakeFromNib()
		
		
	}
	
	override public func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}
