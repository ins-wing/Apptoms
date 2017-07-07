//
//  Views_Helium.swift
//  Helium
//
//  Created by WinG@Apptoms on 1/7/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import UIKit

@IBDesignable open class AtView: UIView {
	@IBInspectable public var cornerRadius: CGFloat {
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

	@IBInspectable public var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}

	@IBInspectable public var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}

	@IBInspectable public var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}

	override open func prepareForInterfaceBuilder() {
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
	
	override open func awakeFromNib() {
		super.awakeFromNib()
		
		
	}
	
	override open func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}

@IBDesignable open class AtImageView: UIImageView {
	@IBInspectable public var cornerRadius: CGFloat {
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
	
	@IBInspectable public var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable public var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}
	
	@IBInspectable public var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}
	
	override open func prepareForInterfaceBuilder() {
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
	
	override open func awakeFromNib() {
		super.awakeFromNib()
		
		
	}
	
	override open func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}

@IBDesignable open class AtButton: UIButton {
	@IBInspectable public var cornerRadius: CGFloat {
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
	
	@IBInspectable public var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable public var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}
	
	@IBInspectable public var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}
	
	override open func prepareForInterfaceBuilder() {
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
	
	override open func awakeFromNib() {
		super.awakeFromNib()
		
		
	}
	
	override open func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}

@IBDesignable open class AtLabel: UILabel {
	@IBInspectable public var cornerRadius: CGFloat {
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
	
	@IBInspectable public var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable public var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}
	
	@IBInspectable public var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}
	
	override open func prepareForInterfaceBuilder() {
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
	
	override open func awakeFromNib() {
		super.awakeFromNib()
		
	}
	
	override open func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}

@IBDesignable open class AtTextField: UITextField {
	@IBInspectable public var cornerRadius: CGFloat {
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
	
	@IBInspectable public var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable public var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}
	
	@IBInspectable public var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}
	
	override open func prepareForInterfaceBuilder() {
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
	
	override open func awakeFromNib() {
		super.awakeFromNib()
		
	}
	
	override open func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
	}
}

@IBDesignable open class AtTextView: UITextView {
	private let placeholderLabel = UILabel()

	@IBInspectable public var placeholder: String {
		set {
			placeholderLabel.text = newValue
			placeholderFrameUpdate()
		}
		get {
			return placeholderLabel.text!
		}
	}

	@IBInspectable public var placeholderTextColor: UIColor {
		set {
			placeholderLabel.textColor = newValue
		}
		get {
			return placeholderLabel.textColor
		}
	}

	override open var textAlignment: NSTextAlignment {
		didSet {
			placeholderLabel.textAlignment = textAlignment
		}
	}

	override open var font: UIFont? {
		didSet {
			placeholderLabel.font = font
		}
	}

	@IBInspectable public var cornerRadius: CGFloat {
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
	
	@IBInspectable public var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable public var borderColor: UIColor? {
		set {
			layer.borderColor = newValue?.cgColor
		}
		get {
			return UIColor(cgColor: layer.borderColor!)
		}
	}
	
	@IBInspectable public var circleMask: Bool = false {
		willSet {
			cornerRadius = newValue ? -1 : 0
		}
	}
	
	override open func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}
		
		layer.borderWidth = borderWidth
		layer.borderColor = borderColor?.cgColor

		placeholderInit()
	}

	override open var text: String? {
		didSet {
			textValueChanged()
		}
	}

	override open var attributedText: NSAttributedString! {
		didSet {
			textValueChanged()
		}
	}

	required public init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)

	}

	override public init(frame: CGRect, textContainer: NSTextContainer?) {
		super.init(frame: frame, textContainer: textContainer)
		placeholderInit()
	}
	
	override open func awakeFromNib() {
		super.awakeFromNib()
		placeholderInit()
	}
	
	override open func layoutSubviews() {
		super.layoutSubviews()
		
		if (circleMask) {
			layer.cornerRadius = min(frame.size.width, frame.size.height) / 2.0
		}
		else {
			layer.cornerRadius = cornerRadius
		}

		placeholderFrameUpdate()
	}

	private func placeholderInit() {
		NotificationCenter.default.addObserver(self, selector: #selector(AtTextView.textValueChanged), name: NSNotification.Name.UITextViewTextDidChange, object: nil)

		placeholderLabel.backgroundColor = UIColor.clear
		placeholderLabel.isUserInteractionEnabled = false
		placeholderLabel.textAlignment = textAlignment
		placeholderLabel.font = font
		placeholderLabel.numberOfLines = 0
		placeholderTextColor = UIColor.placeholder

		placeholderFrameUpdate()
		self.addSubview(placeholderLabel)

		textValueChanged()
	}

	private func placeholderFrameUpdate() {
		placeholderLabel.frame = CGRect(x: textContainerInset.left+textContainer.lineFragmentPadding, y: textContainerInset.top, width: frame.size.width-textContainerInset.left-textContainer.lineFragmentPadding-textContainerInset.right, height: frame.size.height-textContainerInset.top-textContainerInset.bottom)

		placeholderLabel.sizeToFit()
	}

	private var isPlaceholderShown: Bool = true {
		willSet {
			placeholderLabel.isHidden = !newValue
		}
	}

	@objc private func textValueChanged() {
		isPlaceholderShown = text?.isEmpty ?? true
	}

	deinit {
		NotificationCenter.default.removeObserver(self)
	}
}
