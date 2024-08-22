const open_btn = document.getElementById("open-btn");
const dropdown = document.getElementById("programs");

dropdown.addEventListener("change", ()=>{
    window.open(dropdown.value)

})