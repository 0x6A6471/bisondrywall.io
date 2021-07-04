<script context="module">
  export async function load({ fetch, error, status }) {
    const res = await fetch('/api/photos');
    const photos = await res.json();

    if (res.ok) {
      return {
        props: {
          photos: photos.photos.data,
        },
      };
    }
  }
</script>

<script lang="ts">
  import Container from '../components/Container.svelte';

  type Photo = {
    id: string;
    src: string;
    alt: string;
  };

  export let photos: Array<Photo>;
</script>

<svelte:head>
  <title>Gallery</title>
</svelte:head>

<Container>
  <div class="text-center mb-24">
    <h1 class="text-2xl md:text-3xl lg:text-4xl">
      Work that speaks for itself
    </h1>
    <h2 class="text md:textlg lg:text-xl mt-2 text-[#666e75] font-normal">
      Take a look at some of our past work
    </h2>
  </div>

  <div
    class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2 mb-24 px-2 lg:px-0"
  >
    <!-- {#await getPhotos() then response} -->
    {#each photos as photo (photo.id)}
      <img class="image" src={photo.src} alt={photo.alt} />
    {/each}
    <!-- {/await} -->
  </div>
</Container>

<style>
  .image {
    border-radius: 6px;
    min-height: 500px;
  }
</style>
