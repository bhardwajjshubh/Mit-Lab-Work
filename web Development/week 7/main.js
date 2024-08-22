const alert_btn = document.getElementById("alert");
const prompt_btn = document.getElementById("prompt");
const confirm_btn = document.getElementById("confirm");
// const open_window = document.getElementById("open-window");
// const open_btn = document.getElementById("open-btn");
// const dropdown = document.getElementById("programs");

alert_btn.addEventListener("click", ()=>{
    alert("This is the alert box");
})

prompt_btn.addEventListener("click", ()=>{
    prompt("This is the prompt box");
})

confirm_btn.addEventListener("click", ()=>{
    confirm("This is the confirm box");
})

// open_window.addEventListener("click", ()=>{
//     window.open("./page2.html")
// })

