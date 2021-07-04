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
  import supabase from '$lib/db';

  import Container from '../../components/Container.svelte';
  import AdminPhotoModal from '../../components/AdminPhotoModal.svelte';

  type Photo = {
    id: string;
    src: string;
    alt: string;
  };

  export let photos: Array<Photo>;

  let isShow: boolean = false;

  async function handleDelete(id: string) {
    await supabase.from('photos').delete().match({ id: id });

    refetchPhotos();
  }

  function handleModal() {
    isShow = !isShow;
  }

  async function refetchPhotos() {
    const res = await fetch('/api/photos');
    const data = await res.json();

    // set photos props client side to match what is on the server
    photos = data.photos.data;
  }
</script>

<Container>
  <div class="text-center mb-24">
    <h1 class="text-2xl md:text-3xl lg:text-4xl">Photos</h1>
    <h2 class="text md:textlg lg:text-xl mt-2 text-[#666e75] font-normal">
      Create or delete your gallery photos
    </h2>
  </div>

  <button on:click={handleModal}>Add new photo</button>

  <div>
    <ul
      role="list"
      class="grid grid-cols-2 gap-x-4 gap-y-8 sm:grid-cols-3 sm:gap-x-6 lg:grid-cols-4 xl:gap-x-8"
    >
      {#each photos as photo (photo.id)}
        <li class="relative ">
          <div
            class="group block w-full aspect-w-10 aspect-h-7 rounded-lg overflow-hidden shadow-sm"
          >
            <img
              src={photo.src}
              alt={photo.alt}
              class="object-cover pointer-events-none"
            />
            <button type="button" class="absolute inset-0 focus:outline-none">
              <span class="sr-only">View details for IMG_4985.HEIC</span>
            </button>
          </div>

          <button
            on:click={() => handleDelete(photo.id)}
            class="block text-sm font-medium bg-red-400 text-red-900 px-2 py-1 rounded mx-auto mt-2 shadow-sm hover:shadow-md"
          >
            Delete
          </button>
        </li>
      {/each}
    </ul>
  </div>

  <!-- {#if isShow} -->
  <AdminPhotoModal {isShow} {handleModal} {refetchPhotos} />
  <!-- {/if} -->
</Container>
<!-- https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/190826133_116766923907083_3611317413702531098_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=110474&_nc_ohc=NQR9rENqNJMAX9sbSMe&_nc_ht=scontent-bos3-1.xx&tp=14&oh=7ce485d00bbc33df167c2de09ce41bc9&oe=60E4D7A7 -->
