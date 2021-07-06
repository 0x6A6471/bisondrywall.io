<script context="module" lang="ts">
  type LoadInput<
    PageParams extends Record<string, string> = Record<string, string>,
    Context extends Record<string, any> = Record<string, any>,
    Session = any
  > = {
    page: {
      host: string;
      path: string;
      params: PageParams;
      query: URLSearchParams;
    };
    fetch: (info: RequestInfo, init?: RequestInit) => Promise<Response>;
    session: Session;
    context: Context;
  };

  export async function load({ fetch }: LoadInput) {
    // const res = await fetch('/api/photos');
    // const photos = await res.json();
    const res = await fetch(
      'https://graph.facebook.com/112096071040835/photos?limit=100&fields=link,alt_text,images',
      {
        method: 'GET',
        headers: {
          Authorization: `Bearer ${import.meta.env.VITE_FACEBOOK_ACCESS_TOKEN}`,
        },
      }
    );

    const photos = await res.json();

    if (res.ok) {
      return {
        props: {
          photos: photos.data,
        },
      };
    }
  }
</script>

<script lang="ts">
  import Container from '../components/Container.svelte';

  type Image = {
    height: number;
    source: string;
    width: number;
  };

  type Photo = {
    id: string;
    link: string;
    alt_text: string;
    images: Array<Image>;
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
    class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2 mb-24 lg:px-0"
  >
    <!-- {#await getPhotos() then response} -->
    {#each photos as photo (photo.id)}
      <img class="image" src={photo.images[0].source} alt={photo.alt_text} />
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
