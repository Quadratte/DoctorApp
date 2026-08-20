import Foundation

struct MockData {
    static func get() -> [DoctorModel] {
        [
            DoctorModel(doctorName: "Dr. Alexander Bennett", doctorImageName: "", doctorSpecialty: "Dermato-Genetics", doctorDegree: "Ph.D.", doctorRating: 5.0),
            DoctorModel(doctorName: "Dr. Michael Davidson", doctorImageName: "", doctorSpecialty: "Solar Dermatology", doctorDegree: "M.D.", doctorRating: 4.79),
            DoctorModel(doctorName: "Dr. Olivia Turner", doctorImageName: "", doctorSpecialty: "Dermato-Endocrinology", doctorDegree: "M.D.", doctorRating: 4.98)
        ]
    }
}
