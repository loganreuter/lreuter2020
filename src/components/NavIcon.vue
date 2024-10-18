<template>
  <a :href="link" target="#">
    <slot class="icon"></slot>
  </a>
</template>

<script>
export default {
    name: "NavIcon",
    props: {
        link: String
    }
}
</script>

<style scoped>
a
{
    cursor: pointer;
    width: fit-content;
    height: 1em;
    background-color: inherit;
}

.icon
{
    fill: #fff;
}
</style>