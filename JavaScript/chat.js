const form = document.querySelector(".typing-area"),
inputField = form.querySelector(".input-field"),
sendBtn = form.querySelector("form button"),
chatBox = document.querySelector(".chat-box");

form.onsubmit = (e)=>{
    e.preventDefault();//preventing form from submitting
}
sendBtn.onclick = ()=>{
        //let's start Ajax
        let xhr = new XMLHttpRequest(); //creating XML object
        xhr.open("POST", "php/insert-chat.php",true);
        xhr.onload = ()=>{
            if(xhr.readyState === XMLHttpRequest.DONE){
                if(xhr.status === 200){
                    inputField.value = ""; //une fois le message inséré dans la base de données, laissez vide le champ de saisie 
                    scrollToBottom();
                }
            }
        }
    
        //wehave to send the form data through ajax to php
        let formData = new FormData(form); //creating new formData Object
        xhr.send(formData);//sending the form data to php
       
}

chatBox.onmouseenter = ()=>{
    chatBox.classList.add("active");
}
chatBox.onmouseleave = ()=>{
    chatBox.classList.remove("active");
}

setInterval(()=>{
    //let's start Ajax
    let xhr = new XMLHttpRequest(); //creating XML object
    xhr.open("POST","php/get-chat.php",true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let data = xhr.response;
                chatBox.innerHTML = data;
                if(!chatBox.classList.contains("active")){
                    scrollToBottom();
                }
            }
        }
    }

    //nous devons envoyer les données du formulaire via ajax à php 
    let formData = new FormData(form); //création d'un nouvel objet formData 
    xhr.send(formData);//envoyer les données du formulaire à php 
   }, 500); //Cette fonction s'exécutera fréquemment après 500 ms 

   function scrollToBottom(){
       chatBox.scrollTop = chatBox.scrollHeight;
   }