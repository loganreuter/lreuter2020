<template>
  <div class="project-tile">
    <img :src="image" alt="">

    <div class="project-wrapper">
        <span class="title">
            <h1>
                {{title}}
            </h1>

            <span v-if="isWIP" class="date">WIP</span>
            <span v-else class="date"> <span v-if="startDate">{{startDate}} - </span> {{endDate}}</span>
        </span>
        <span v-if="link">Link: <a :href="link" target="#">{{altText}}</a></span>
        <p>
            <slot></slot>
        </p>
    </div>
  </div>
</template>

<script>
export default {
    name: "ProjectTile",
    props: {
        image: String,
        isWIP: Boolean,
        startDate: String,
        endDate: String,
        link: String,
        altText: String,
        title: String,
    }
}
</script>

<style lang="scss" scoped>
@media screen and (max-width: 540px) {
    #app #content #projects .project-tile {
        width: 100%;
        border-radius: 15px;
        border: 3px solid var(--gray);
        box-shadow: 6px 6px var(--gray);

        .project-wrapper
        {
            min-width: 10px;
            border-top: 3px solid var(--gray);

            .title
            {
                flex-flow: column;
                align-items: flex-start;
            }
        }
    }
}

.project-tile
{
    align-self: flex-end;

    display: flex;
    flex-flow: row wrap;
    justify-content: center;
    align-items: center;

    border-radius: 5em 0 0 5em;
    border-top: 3px solid var(--gray);
    border-bottom: 3px solid var(--gray);
    border-left: 3px solid var(--gray);
    background-color: var(--background-color);

    overflow: hidden;

    width: 75%;

    &.flip
    {
        flex-flow: row-reverse wrap;
        align-self: flex-start;
        border-radius: 0 5em 5em 0;
        border-left: none;
        border-right: 3px solid var(--gray);
    }

    img
    {
        width: 400px;
        height: 400px;
    }

    .project-wrapper
    {
        flex: 1 1 0;
        min-width: 40em;

        padding: 2em;
        display: flex;
        flex-flow: column nowrap;
        justify-content: start;
        // align-items: center;
    }

    .title
    {
        display: flex;
        flex-flow: row nowrap;
        align-items: center;
        width: 100%;
        color: var(--gray);

        h1
        {
            font-size: 36px;
            width: fit-content;
            margin-right: auto;
        }

        .date
        {
            font-weight: bold;
        }
    }

    a{
        text-decoration: underline;
        color: var(--blue)
    }
}
</style>