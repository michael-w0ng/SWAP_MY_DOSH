console.log("ghjk")
import "bootstrap";
import { hello } from "./conversion";
import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.min.css';
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr(".datepicker", {

});

flatpickr("#request_start_date", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#request_end_date"})]
})

flatpickr("#start_date", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#end_date"})]
})

console.log( "hello")


function refresh() {
  document.getElementById("counter").innerHTML = Unread();
}

document.addEventListener("DOMContentLoaded", () => {
  setInterval(refresh, 1000); // Every 1 second, the `refresh` function is called.
});


