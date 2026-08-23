import Foundation

struct MockData {
    static func get() -> [DoctorModel] {
        [
            DoctorModel(doctorName: "Dr. Alexander Bennett", doctorImageName: "alexander", doctorSpecialty: "Dermato-Genetics", doctorDegree: "Ph.D.", doctorRating: 5.0),
            DoctorModel(doctorName: "Dr. Michael Davidson", doctorImageName: "michael", doctorSpecialty: "Solar Dermatology", doctorDegree: "M.D.", doctorRating: 4.79),
            DoctorModel(doctorName: "Dr. Olivia Turner", doctorImageName: "olivia", doctorSpecialty: "Dermato-Endocrinology", doctorDegree: "M.D.", doctorRating: 4.98),
            DoctorModel(doctorName: "Dr. Sophia Martinez", doctorImageName: "sophia", doctorSpecialty: "Cosmetic Bioengineering", doctorDegree: "Ph.D.", doctorRating: 4.98)
        ]
    }
}
