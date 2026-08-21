import UIKit

final class DoctorListCell: UITableViewCell {
    static let id = String(describing: DoctorListCell.self)

    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .appSecondary
        view.layer.cornerRadius = 16
        view.layer.masksToBounds = true
        return view
    }()

    let doctorImage: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = .alexander
        iv.layer.cornerRadius = 50
        iv.clipsToBounds = true
        return iv
    }()

    let doctorNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .appMain
        label.font = UIFont(name: "LeagueSpartan-Medium", size: 15)
        label.numberOfLines = 0
        return label
    }()

    let doctorSpecialityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .appBlack
        label.font = UIFont(name: "LeagueSpartan-Light", size: 12)
        label.numberOfLines = 0
        return label
    }()

    let infoButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .appMain
        btn.setTitle("Info", for: .normal)
        btn.layer.cornerRadius = 11
        btn.titleLabel?.font = UIFont(name: "LeagueSpartan-Regular", size: 15)
        btn.clipsToBounds = true
        return btn
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        setupConstraints()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        nil
    }

    private func setupView() {
        backgroundColor = .appWhite
        addSubview(containerView)
        addSubview(doctorImage)
        addSubview(doctorNameLabel)
        addSubview(doctorSpecialityLabel)
        addSubview(infoButton)

    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),

            doctorImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12),
            doctorImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            doctorImage.heightAnchor.constraint(equalToConstant: 100),
            doctorImage.widthAnchor.constraint(equalToConstant: 100),
            doctorImage.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -12),

            doctorNameLabel.leadingAnchor.constraint(equalTo: doctorImage.trailingAnchor, constant: 9),
            doctorNameLabel.topAnchor.constraint(equalTo: doctorImage.topAnchor, constant: 19),

            doctorSpecialityLabel.topAnchor.constraint(equalTo: doctorNameLabel.bottomAnchor, constant: 15),
            doctorSpecialityLabel.leadingAnchor.constraint(equalTo: doctorNameLabel.leadingAnchor, constant: 0),

            infoButton.topAnchor.constraint(equalTo: doctorSpecialityLabel.bottomAnchor, constant: 18),
            infoButton.leadingAnchor.constraint(equalTo: doctorImage.trailingAnchor, constant: 8),
            infoButton.widthAnchor.constraint(equalToConstant: 46),
            infoButton.heightAnchor.constraint(equalToConstant: 22),
        ])
    }
}
