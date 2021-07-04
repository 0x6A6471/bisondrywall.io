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
  import { session } from '$app/stores';
  import { goto } from '$app/navigation';

  import supabase from '$lib/db';
  import Container from '../../components/Container.svelte';
  import AdminPhotoModal from '../../components/AdminPhotoModal.svelte';

  // check if Jake or Ethan are logged in
  if (!$session) {
    goto('/login');
  }

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

  <div class="mb-24 p-2">
    <div class="flex flex-col sm:flex-row justify-between items-center mb-8">
      <div>
        <h3 class="text-xl text-center sm:text-left">Live photos</h3>
        <p class="text-center sm:text-left">
          These are your current photos being displayed on the gallery page.
        </p>
      </div>
      <div>
        <button
          class="bg-white px-4 py-2 mt-4 sm:mt-0 rounded-md shadow-sm text-gray900 border border-gray100 hover:border-gray200 hover:shadow-md"
          on:click={handleModal}>Add new photo</button
        >
      </div>
    </div>
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

  <AdminPhotoModal {isShow} {handleModal} {refetchPhotos} />
</Container>
