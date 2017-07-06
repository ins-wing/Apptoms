//
//  Views_Helium.swift
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
	public let placeHolderLabel: AtLabel = AtLabel()
	private var placeholderLabelConstraints = [NSLayoutConstraint]()
	
	public var placeHolderFont: UIFont {
		set {
			placeHolderLabel.font = newValue
		}
		get {
			return placeHolderLabel.font
		}
	}
	
	public var placeHolderTextColor: UIColor {
		set {
			placeHolderLabel.textColor = newValue
		}
		get {
			return placeHolderLabel.textColor
		}
	}
	
	public var placeHolderTextAlignment: NSTextAlignment {
		set {
			placeHolderLabel.textAlignment = newValue
		}
		get {
			return placeHolderLabel.textAlignment
		}
	}
	
	@IBInspectable var placeHolder: String {
		set {
			placeHolderLabel.text = newValue
		}
		get {
			return placeHolderLabel.text!
		}
	}
	
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
	
	override public init(frame: CGRect, textContainer: NSTextContainer?) {
		super.init(frame: frame, textContainer: textContainer)
		placeHolderInit()
	}
	
	required public init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		placeHolderInit()
	}
	
	override public func awakeFromNib() {
		super.awakeFromNib()
		placeHolderInit()
	}
	
	override public func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
		
		placeHolderLabel.preferredMaxLayoutWidth = textContainer.size.width - textContainer.lineFragmentPadding * 2.0
	}
	
	private func placeHolderInit() {
		placeHolderFont = font!
		placeHolderTextColor = UIColor.placeHolder
		placeHolderTextAlignment = textAlignment
		
		placeHolderLabel.numberOfLines = 0
		placeHolderLabel.backgroundColor = UIColor.clear
		
		addSubview(placeHolderLabel)
		placeHolderConstraintsUpdate()
	}
	
	override open var textContainerInset: UIEdgeInsets {
		didSet {
			placeHolderConstraintsUpdate()
		}
	}
	
	private func placeHolderConstraintsUpdate() {
		var newConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(\(textContainerInset.left + textContainer.lineFragmentPadding))-[placeholder]",
			options: [],
			metrics: nil,
			views: ["placeholder": placeHolderLabel])
		newConstraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(\(textContainerInset.top))-[placeholder]",
			options: [],
			metrics: nil,
			views: ["placeholder": placeHolderLabel])
		newConstraints.append(NSLayoutConstraint(
			item: placeHolderLabel,
			attribute: .width,
			relatedBy: .equal,
			toItem: self,
			attribute: .width,
			multiplier: 1.0,
			constant: -(textContainerInset.left + textContainerInset.right + textContainer.lineFragmentPadding * 2.0)
		))
		
		removeConstraints(placeholderLabelConstraints)
		addConstraints(newConstraints)
		placeholderLabelConstraints = newConstraints
	}
}