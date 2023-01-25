# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create!(
    username: "janesmith",
    email: "jane@gmail.com",
    role: 'citizen',
    password: "Jane",
)

User.create!(
    username: "johndoe",
    email: "johndoe@gmail.com",
    role: 'citizen',
    password: "1234",
)

User.create!(
    username: "admin",
    email: "admin@chiriku.com",
    role: 'admin',
    password: "admin1234",
)

User.create!(
    username: "Mary",
    email: "mary@gmail.com",
    role: 'citizen',
    password: "mary",
)

User.create!(
    username: "Halkano",
    email: "halkano@gmail.com",
    role: 'citizen',
    password: "halkano",
)

User.create!(
    username: "Felix",
    email: "felix@chiriku.com",
    role: 'citizen',
    password: "felix",
)


Report.create!(user_id:1, report_title: "Flooding in Tana", report_message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.g"  , report_image: "https://img.freepik.com/free-vector/did-you-know-with-megaphone-text-space_1017-25697.jpg?size=338&ext=jpg&ga=GA1.2.790298598.1667807727&semt=sph", report_status: "investigating", report_address: "Hola", report_category: "Intervention")

Report.create!(user_id:2, report_title: "Kajiado Lands Office Corruption", report_message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.g"  , report_image: "https://img.freepik.com/free-vector/did-you-know-with-megaphone-text-space_1017-25697.jpg?size=338&ext=jpg&ga=GA1.2.790298598.1667807727&semt=sph",report_status: "rejected", report_address: "Kajiado", report_category: "Red Flag")

Report.create!(user_id: 3, report_title: "Bridge Collapse", report_message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.g"  , report_image: "https://img.freepik.com/free-psd/exclamatory-sign-icon-isolated-3d-render-illustration_47987-11882.jpg?size=338&ext=jpg&ga=GA1.2.790298598.1667807727&semt=sph", report_status: "resolved", report_address: "Baringo Town", report_category: "Intervention") 

Alert.create!(user_id:1, report_id: 1, title: "Flooding in Tana", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.g"  , image: "https://img.freepik.com/free-vector/loudspeaker-megaphone-with-lightings-red_1284-58706.jpg?size=626&ext=jpg&ga=GA1.2.790298598.1667807727&semt=sph", lat: -1.286389, lng: 36.817223, status: "investigating")
Alert.create!(user_id:2, report_id: 2, title: "Kajiado Lands Office Corruption", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.g"  , image: "https://img.freepik.com/free-vector/loudspeaker-megaphone-with-lightings-red_1284-58706.jpg?size=626&ext=jpg&ga=GA1.2.790298598.1667807727&semt=sph", lat: -4.043740, lng: 39.658871, status: "rejected")
Alert.create!(user_id: 3, report_id: 3, title: "Stalled Dam Construction", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.g"  , image: "https://img.freepik.com/free-vector/loudspeaker-megaphone-with-lightings-red_1284-58706.jpg?size=626&ext=jpg&ga=GA1.2.790298598.1667807727&semt=sph", lat: -0.717178, lng: 36.431026, status: "resolved") 