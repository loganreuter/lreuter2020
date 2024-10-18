<template>
  <ol id="sidebar">
    <li class="about">
        <a href="#about">About Me</a>
    </li>

    <li class="resume">
        <a href="#resume">Resume</a>
    </li>

    <li class="projects">
        <a href="#projects">Projects</a>
    </li>
  </ol>
</template>

<script>
export default {
    name: "SideBar",
    mounted()
    {
        const options = {
            // root: document.getElementById("content"),
            rootMargin: '0 0 -10% 0',
            threshold: 0.51
        }

        let observer = new IntersectionObserver((entries, observer) => {
            entries.forEach((entry) => {
                const entryId = entry.target.id
                const link = document.getElementsByClassName(entryId)[0]
                if (entry.isIntersecting)
                {
                    console.log(entryId)
                    link.classList.add("active");
                } else {
                    link.classList.remove("active");
                }
            })
        }, options)

        const targets = document.querySelectorAll("section")

        targets.forEach(target => {
            observer.observe(target)
        })

    }
}
</script>

<style lang="scss">
ol 
{
    position: sticky;
    top: 0;
    list-style-type: decimal-leading-zero;
    text-align: left;
    padding: 1em;
    padding-left: 3em;
    width: 25%;
    min-width: 13em;
    display: flex;
    flex-flow: column nowrap;
    align-items: center;
    justify-content: center;
    font-size: 18px;
    height: 100vh;
    margin: 0;
}

li
{
    width: fit-content;
    color: #9499ff;
    padding-left: 0.5em;
    margin: 1em;
    transition: font-size 500ms ease-in-out;
    font-size: 1em;

    &.active {
        font-weight: bolder;
        font-size: 16pt;
    }
}
</style>