import UIKit

final class RoundedButton: UIButton {

    enum ButtonSize {
        case medium
    }

    enum ButtonStyle {
        case normal
    }

    let buttonStyle: ButtonStyle
    let buttonSize: ButtonSize

    init(_ buttonStyle: ButtonStyle, _ buttonSize: ButtonSize) {
        self.buttonStyle = buttonStyle
        self.buttonSize = buttonSize
        super .init(frame: .zero)
        setupButton()
        applyStyle()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        nil
    }

    private func setupButton() {
        translatesAutoresizingMaskIntoConstraints = false
    }

    private func applyStyle() {
        switch buttonStyle {
        case .normal:
            backgroundColor = .appMain
        }

        switch buttonSize {
        case .medium:
            print("")
        }
    }
}
