(() => {
    const project = document.querySelectorAll('.project');
    const lightbox = document.querySelector('.lightbox');
    const close = document.querySelector('#close-btn');

    close.style = "display:none;"
    
    // run the fetch API and get the DB data
    function fetchData() {
        let targetEl = this;
        let url = `/project/${this.dataset.target}`;
        
        fetch(url)
        .then(res => res.json())
        .then(data => {
            // populate the popover
            buildLightbox(data, targetEl);
        })
        .catch((err) => console.log(err));
    }
    
    function buildLightbox(project, el) {
        lightbox.querySelector(".lightbox-title").textContent = project.proj_title;
        lightbox.querySelector(".lightbox-img").src=`images/${project.proj_img_big}`;
        lightbox.querySelector(".lightbox-text").textContent = project.proj_description;
        // show the lightbox
        lightbox.classList.add('show-lightbox');
        close.style = "display:block;"
        el.appendChild(lightbox);
    }

    function closeLightbox() {
        // lightbox.classList.remove('show-lightbox');
        window.location.reload();
       
    }

    //Event Listeners

    close.addEventListener("click", closeLightbox, false);

    project.forEach(project => project.addEventListener("click", fetchData, false));

    (() => {
        console.log('fired');
    
        const form = document.querySelector('form');
        const submit = form.querySelector('.submit-button');
    
        function handleMail(event) {
            event.preventDefault();
    
            let formdata = new FormData(form),
                maildata = {};
    
            for (let [key, value] of formdata.entries()) {
                maildata[key] = value;
            }
    
            let url = `/mail`;
    
            fetch(url, {
                method: 'POST',
                headers: {
                    'Accept': 'application/json, text/plain, */*',
                    'Content-type': 'application/json'
                },
    
                body: JSON.stringify(maildata)
            })
                .then(res => res.json())
                .then(data => {
    
                    if (data.response.includes("OK")) {
                        
                        form.reset();
                        alert("Yuhuu!!! Your message has been sent successfully. Thank you.");
                    }
                }) 
                .catch((err) => console.log(err));

        }
    
        form.addEventListener('submit', handleMail)
    })()

})();