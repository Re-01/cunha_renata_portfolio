(() => {
    const project = document.querySelectorAll('.project');
    const lightbox = document.querySelector('.lightbox');
    const close = document.querySelector('#close-btn');

    
    // run the fetch API and get the DB data
    function fetchData() {
        let targetEl = this;
        let url = `/project/${this.dataset.target}`;
        
        
        fetch(url)
        .then(res => res.json())
        .then(data => {
            console.log(data);
            
            // populate the popover
            buildLightbox(data, targetEl);
            targetEl.removeEventListener('click', fetchData);
        })
        .catch((err) => console.log(err));
    }
    
    function buildLightbox(project, el) {
        lightbox.querySelector(".lightbox-title").textContent = project.proj_title;
        lightbox.querySelector(".lightbox-img").src=`images/${project.proj_img_big}`;
        lightbox.querySelector(".lightbox-text").textContent = project.proj_description;
        // show the lightbox
        lightbox.classList.add('show-lightbox');
        el.appendChild(lightbox);
    }

    function closeLightbox() {
        console.log('closing lightbox!');
        lightbox.classList.remove('show-lightbox');
    }

    //Event Listeners

    close.addEventListener("click", closeLightbox, false);

    project.forEach(project => project.addEventListener("click", fetchData, false));

})();