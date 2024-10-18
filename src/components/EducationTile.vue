<template>
  <div class="education-tile">
    <div class="degree">{{degree}}</div>
    <div class="school">{{school}}</div>
    <div class="awarded">
        <span v-if="isExpected">Expected:</span>
        {{date}}
    </div>
  </div>
</template>

<script>
export default {
    name: "EducationTile",
    props: {
        school: String,
        degree: String,
        date: String,
        isExpected: Boolean,
    }
}
</script>

<style>
.education-tile {
    background-color: var(--white);
    border: 5px solid var(--gray);
    width: 100%;
    padding: 1em;
    border-radius: 15px;
    box-shadow: 5px 5px var(--gray);
}

.degree{
    font-weight: bolder;
}
</style>