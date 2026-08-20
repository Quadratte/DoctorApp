import UIKit

final class DoctorListViewController: UIViewController {

    private let mockData = MockData.get()

    private let doctorTableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTableView()
        setupConstraints()
    }

    private func setupUI() {
        view.backgroundColor = .orange
        view.addSubview(doctorTableView)
    }

    private func setupTableView() {
        doctorTableView.dataSource = self
        doctorTableView.delegate = self
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            doctorTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            doctorTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            doctorTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            doctorTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}

extension DoctorListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mockData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = mockData[indexPath.row].doctorName
        return cell
    }
}
