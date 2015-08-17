if Rails.env.development?

User.create!([
  {email: "user@example.com", encrypted_password: "$2a$10$.Sg/A35MGqD8a7J5YAl/3.lesEs0DTVPbtM2JvhalAsWPzxvvWyG6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-08-17 19:12:27", last_sign_in_at: "2015-08-17 19:12:27", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$10$q.rTl1UAt.DKGv4PqxZu3uphjwJrQ7p3XVvH9LgNpZ4FQoi1syyHO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2015-08-17 14:21:42", last_sign_in_at: "2015-08-16 18:54:38", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])

Org.create!([
  {street: "1500 N. Kingsbury Ave", city: "Chicago", state: "IL", zip: 60647, name: "Kids Science Labs", rating: 4.0, phone_number: "(312) 806-2443", contact_name: "", email: "", desc: nil},
  {street: "2646 N. Halsted", city: "Chicago", state: "IL", zip: 60614, name: "The Paintbrush", rating: 4.0, phone_number: "7736361968", contact_name: "", email: "thepaintbrush@thepaintbrush.net", desc: "Classes at The Paintbrush incorporate music appreciation into hands-on art appreciation lessons to teach students about the lives and the works of influential artists from the past and modern day, from all over the world."},
  {street: "1511 W. Fullerton Ave", city: "Chicago", state: "IL", zip: 60614, name: "Bei Dou Kung Fu", rating: 4.0, phone_number: "7733274710", contact_name: "Master Wu", email: "masterwu@beidoukungfuchicago.com", desc: "Help your child stay fit, improve posture, and learn self-discipline. Your child will begin with basic movements and follow our newly redesigned belt system to help set and achieve goals. "},
  {street: "1730 W. Fullerton #24/25", city: "Chicago", state: "IL", zip: 60614, name: "Collective Dance", rating: 4.5, phone_number: "7734564320", contact_name: "Nicole Spagnolo", email: "info@CollectiveDanceChicago.com", desc: "At Collective Dance we believe dance knows no boundaries. It does not discriminate. It inspires, grows and flourishes by touching as many people as it can. It promotes happiness, tells stories, teaches valuable lessons and touches our hearts."},
  {street: "1511 West Barry", city: "Chicago", state: "IL", zip: 60614, name: "Tiny Tales Dance ", rating: 5.0, phone_number: "7734774488", contact_name: "Sarah G.", email: "info@tinytalesdance.com", desc: "Dance Education in a fun environment with upbeat and age appropriate music. Our professional teachers strive to give your child the best training possible while fostering enthusiasm for dance."}
])
Activity.create!([
  {org_id: Org.find_by_phone_number("(312) 806-2443").id, name: "Dinosaurs v. Animals: Creatures- Lincoln Park M-F", desc: nil},
  {org_id: Org.find_by_phone_number("7736361968").id, name: "Drop-In ART: all ages", desc: "Ninety minutes to two hours of Open Studio Time for children and their caregivers. $10/child. (Children under one year are free when accompanied by paying child; adults are free.) Year-’round. No reservation required. Open to public."},
  {org_id: Org.find_by_phone_number("7736361968").id, name: "Writing and Illustrating for Kids ", desc: "Ages 8 & up. In this hybrid writing and art class, artists will utilize their creativity and critical thinking skills to combine visual art with the art of writing.  90 minutes. 10 weeks/$300 (8-week summer session: $250)"},
  {org_id: Org.find_by_phone_number("7733274710").id, name: "Children - Open", desc: "Open Classes for Children"},
  {org_id: Org.find_by_phone_number("7733274710").id, name: "Children - Private", desc: "Private Class"},
  {org_id: Org.find_by_phone_number("7734774488").id, name: "4yrs-6yrs Ballet/Tap", desc: "Introduction to the fundamentals of ballet and tap."},
  {org_id: Org.find_by_phone_number("7734774488").id, name: "Tap Class", desc: "Fundamentals of Tap."},
  {org_id: Org.find_by_phone_number("7733274710").id, name: "Self-Defense Class", desc: "Basics of Self-Defense."}
])
Event.create!([
  {activity_id: Activity.find_by_name("Dinosaurs v. Animals: Creatures- Lincoln Park M-F").id, age_min: 4.0, age_max: 12.0, start_date: "2015-08-10", end_date: "2015-12-18", start_time: "2000-01-01 09:00:00", end_time: "2000-01-01 15:00:00", price: 185.0, desc: nil, frequency: nil},
  {activity_id: Activity.find_by_name("Writing and Illustrating for Kids ").id, age_min: 1.0, age_max: 18.0, start_date: "2015-06-08", end_date: "2015-07-27", start_time: "2000-01-01 17:30:00", end_time: "2000-01-01 19:00:00", price: 300.0, desc: "In this hybrid writing and art class, artists will utilize their creativity and critical thinking skills to combine visual art with the art of writing. 8 Week Summer Session", frequency: "Monday"},
  {activity_id: Activity.find_by_name("Drop-In ART: all ages").id, age_min: 0.0, age_max: 18.0, start_date: "2015-01-01", end_date: "2016-01-01", start_time: "2000-01-01 09:15:00", end_time: "2000-01-01 11:15:00", price: 10.0, desc: "Two hours of Open Studio Time for children and their caregivers. (Children under one year are free when accompanied by paying child; adults are free.) Year-’round. No reservation required. Open to public.", frequency: "Monday, Tuesday"},
  {activity_id: Activity.find_by_name("Children - Open").id, age_min: 4.0, age_max: 7.0, start_date: "2015-01-01", end_date: "2016-01-01", start_time: "2000-01-01 17:30:00", end_time: "2000-01-01 18:20:00", price: 100.0, desc: "Introduction to the fundamentals of Kung Fu, Wushu, Sanshou, Tai Chi, Ba Gua, Shin Yi or Qi Gong.", frequency: "Monday, Friday"},
  {activity_id: Activity.find_by_name("Tap Class").id, age_min: 7.0, age_max: 12.0, start_date: "2015-01-01", end_date: "2016-01-01", start_time: "2000-01-01 16:45:00", end_time: "2000-01-01 18:00:00", price: 125.0, desc: "Advanced Tap ", frequency: "Monday, Wednesday, Friday"}
])

  puts "Development database ready for use."

else 

    puts "Do not run this in production!"

end