# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ------------userdata-----------------------------------------------------------------------
# users = User.create([
# {
#     name: 'harsh',
#     address: 'jaipur',
#     phone_no: '9876543210',
#     gender: 'M'
# },
# {
#     name: 'soumyadeep',
#     address: 'Noida',
#     phone_no: '9982127890',
#     gender: 'M'
# },
# {
#     name: 'vaishnavi',
#     address: 'lucknow',
#     phone_no: '9087654330',
#     gender: 'F'
# }
# ])
# p "Created #{User.count} Users"

# -------------------------------------------------------------------------------------------------

# ----------------------------driverData-----------------------------------------------------------
# drivers = Driver.create([
# {
#     name: 'chirag',
#     gender: 'M',
#     phone_no: '8927090909',
#     age: 22,
#     dl_no: 'AZ129139'


# },
# {
#     name: 'kapil',
#     gender: 'M',
#     phone_no: '8871717238',
#     age: 24,
#     dl_no: 'AY129334'


# },
# {
#     name: 'Alok',
#     gender: 'M',
#     phone_no: '9368373212',
#     age: 32,
#     dl_no: 'AY876544'


# }
# ])
# p "Created #{Driver.count} Drivers"
# --------------------------------------------------------------------------------

# ---------------------owner-Details---------------------------------------
# owners = OwnerDetail.create([
# {
#     owner_name: 'hari',
#     owner_adhar: '876543215212',
#     owner_address: 'Tamil Nadu'
    
# },
# {
#     owner_name: 'Akash',
#     owner_adhar: '987613215543',
#     owner_address: 'Allahabad'
    
# },
# {
#     owner_name: 'Rishikesh',
#     owner_adhar: '987656741267',
#     owner_address: 'Ranchi'
    
# }
# ])
# p "Created #{OwnerDetail.count} owners"
# ------------------------------end--------------------------------------------------------

# ---------------taxiDetails--------------------------------------

# taxi_details = TaxiDetail.create([
# {
#     model_no: "I",
#     year: 2019,
#     taxi_type: "SUV",
#     status: "available",
#     owner_detail_id: 2
# },
# {
#     model_no: "III",
#     year: 2017,
#     taxi_type: "Sedan",
#     status: "not-available",
#     owner_detail_id: 1
# },
# {
#     model_no: "II",
#     year: 2020,
#     taxi_type: "SUV",
#     status: "available",
#     owner_detail_id: 3
# }
# ])

# p "Created #{TaxiDetail.count} Taxi's"

# ----------------------end-----------------------------------------------

# ----journey details --------------------------------------
# journey = JourneyDetail.create([
# {
#     date_of_journey: Date.new(2023, 6, 6),
#     start_time: Time.new(2023, 6, 6, 11, 30, 0),
#     end_time: Time.new(2023, 6, 6, 15, 45, 0),
#     start_loc: "Aligarh",
#     end_loc: "delhi",
#     adv_amt: 450,
#     no_of_passngr: 2,
#     driver_id: 1,
#     taxi_detail_id: 2
# },
# {
#     date_of_journey: Date.new(2023, 7, 5),
#     start_time: Time.new(2023, 7, 5, 9, 0, 0),
#     end_time: Time.new(2023, 7, 5, 14, 0, 0),
#     start_loc: "Delhi",
#     end_loc: "Aligarh",
#     adv_amt: 300,
#     no_of_passngr: 2,
#     driver_id: 2,
#     taxi_detail_id: 1
# },
# {
#     date_of_journey: Date.new(2023, 5, 10),
#     start_time: Time.new(2023, 5, 10, 11, 45, 0),
#     end_time: Time.new(2023, 5, 11, 16, 0, 0),
#     start_loc: "Aligarh",
#     end_loc: "kanpur",
#     adv_amt: 500,
#     no_of_passngr: 3,
#     driver_id: 3,
#     taxi_detail_id: 3
# }
# ])
# p "created #{JourneyDetail.count} journeys"
# -------------------------end of journey-details------------------------

# -------------------------bill_detail-------------------------------------
# bill = BillDetail.create([
#     {
#         bill_date: Date.new(2023, 6, 6),
#         total_amt: 1200,
#         journey_detail_id: 1

#     },
#     {
#         bill_date: Date.new(2023, 5, 10),
#         total_amt: 2200,
#         journey_detail_id: 3

#     },
#     {
#         bill_date: Date.new(2023, 7, 5),
#         total_amt: 900,
#         journey_detail_id: 2

#     }
# ])

# p "created #{BillDetail.count} bill's"


# -------------------------end bill-detail-----------------------------------

# ---------passngrs---------------------------
# passngrs = Passngr.create([
#     {
#         journey_detail_id: 1,
#     },
#     {
#         journey_detail_id: 1,
#     },
#     {
#         journey_detail_id: 2,
#     },
#     {
#         journey_detail_id: 2,
#     }
    
# ])
# p "created #{Passngr.count} passngr's"
# --------------end---------------------------


# -----------fdbk detail----------------------------------
# fdbk = Fdbk.create([
# {
#     description: "satisfactory",
#     email: "krzubairkhan@gmail.com",
#     passngr_id: 2,
#     journey_detail_id: 1
# },
# {
#     description: "not-satisfactory",
#     email: "harshkumar@gmail.com",
#     passngr_id: 3,
#     journey_detail_id: 2
# }

# ])

# p "fdbk #{Fdbk.count} created"




# ---------------------end-------------------------------------------
