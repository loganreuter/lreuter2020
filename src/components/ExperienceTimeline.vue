<template>
  <div class="timeline">
    <div class="line">
      <TimelineTile v-for="(job, index) in experience" :key="index" :job="job" />
    </div>
  </div>
</template>

<script>
import TimelineTile from './ExperienceTile.vue'

export default {
  name: "ExperienceTimeline",
  components: {
    TimelineTile
  },
  props: {
    experience: Object
  },
}
</script>

<style lang="scss" scoped>
    .timeline{
      display: flex;
      flex-flow: column;
      justify-content: center;
      align-items: center;
      height: fit-content;
      position: relative;

      .line{
        content: "";
        width: 4px;
        height: 40em;
        background: linear-gradient(var(--text-color) 85%, rgba(0, 0, 0, 0));
        display: flex;
        flex-flow: column nowrap;
        align-items: center;
        gap: 4rem;
      }
    }
</style>