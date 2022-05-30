Task requirements

For each type of user, it is necessary to implement the following functionality:

The patient can register, enter his personal account (Profile), view a list of doctors by category, make an appointment, get recommendations from the doctor after taking.

The doctor can enter his personal account (Profile), view the list of registered patients, give advice to the patient. The physician may refer to a certain categories (therapist, cardiologist, etc.).

Admin has access to the list of patients and doctors. Can create categories doctors, assign a specific doctor to a category. (can be done via ActiveAdmin/Administrate)

Requirements for authentication and authorization:

use devise;
implement login via phone-password;
use gem cancancan to differentiate user rights;
Category table requirements:

validation for uniqueness by name;
possibility to add several doctors;
Requirements for Doctor-Patient tables:

implement many-to-many communication;
a doctor can only have 10 open records (simultaneously);
the record is automatically closed (not deleted) after the doctor writes a recommendation to the user;

Project is deployed to
Heroku: https://hospital-test-parchi.herokuapp.com
