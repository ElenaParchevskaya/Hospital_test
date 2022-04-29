// src/controllers/makeAppointment_controller.js
import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    greet(event) {
        console.log('')
        $.ajax({
            url: '/appointments', beforeSend: function (xhr) {
                xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
            }, type: 'POST', data: {doctor_id:this.data.get("myValue")}

        });
    }
    clear(event){

    }
}
