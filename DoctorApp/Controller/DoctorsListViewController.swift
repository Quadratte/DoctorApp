import UIKit

final class DoctorsListViewController: UIViewController {

    private let mockData = MockData.get()

    private let doctorTableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.rowHeight = UITableView.automaticDimension
        tv.estimatedRowHeight = 110
        tv.separatorStyle = .none
        tv.register(DoctorListCell.self, forCellReuseIdentifier: DoctorListCell.id)
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTableView()
        setupConstraints()
    }

    private func setupUI() {
        view.backgroundColor = .appWhite
        view.addSubview(doctorTableView)
    }

    private func setupTableView() {
        doctorTableView.dataSource = self
        doctorTableView.delegate = self
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            doctorTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            doctorTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            doctorTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            doctorTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
        ])
    }
}

extension DoctorsListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mockData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DoctorListCell.id, for: indexPath) as? DoctorListCell else { return UITableViewCell() }

        cell.selectionStyle = .none
        cell.doctorImage.image = UIImage(named: mockData[indexPath.row].doctorImageName)
        cell.doctorNameLabel.text = mockData[indexPath.row].doctorName
        cell.doctorSpecialityLabel.text = mockData[indexPath.row].doctorSpecialty
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
