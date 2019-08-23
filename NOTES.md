Doctors need: 
name - string
department - string

Patients need: 
name - string
age - integer

Appointments need (join table):
doctor_id - integer (belongs to)
patient_id - integer (belongs to) 
appointment_datetime - datetime

To Do: 
- [x] generate resource for doctors
   * name
   * department
   * --no-test-framework
- [x] generate resource for patients
   * name
   * age:integer
   * --no-test-framework
- [x] generate resource for appointments
   * belongs_to doctor
   * belongs_to patient
   * appointment_datetime:datetime
   * --no-test-framework

- [x] Run `rails db:migrate && rails db:migrate RAILS_ENV=test`

- [x] Check `routes.rb` for resources (but then limit those to only the pages that are needed below:)
- [x] Run `rails db:seed` after prelim check of models

- [x] Check Doctor model
   * add `has_many` :appointments
   * add `has_many` :patients, through: appointments
- [] Create 2 views for `doctor`:
   * index
      * displays each doctors name
      * a link to their show page
      * and a count of their patients 
   [x] * show
      * displays the docs name
      * displays the docs dept
      * appointments 
         * shows appointment date, time
         * shows appointment's patient (linking to the patient's show page)

- [x] Check Patient model
   * add `has_many` :appointments
   * add `has_many` :doctors, through: appointments
- [] Create 2 views for `patient`:
   * index
      * Displays a link to each patient's show page
      * and the total number of appointments they have. 
   * show
      * lists the date and time for each of their appointments
      * and links to the corresponding doctor's show page. 

- [x] Check Appointment model
   * add `belongs_to` :doctor
   * add `belongs_to` :patient
   * add method to put the datetime into HRF of "January 12, 2016 at 3:00"
- [] Create 1 views for `appointment`:
   * make sure it *DOES NOT* have an `index` page
   * show

