<script lang="ts">
  import supabase from '$lib/db';

  type Photo = {
    id: string;
    src: string;
    alt: string;
  };

  export let isShow: boolean;
  export let handleModal: () => void;
  export let refetchPhotos: () => void;

  let src: string = '';
  let alt: string = '';

  async function addPhoto() {
    const newPhoto = await supabase
      .from('photos')
      .insert({ src: src, alt: alt });

    if (!newPhoto.error) {
      refetchPhotos();
      handleModal();
    }

    src = '';
    alt = '';
  }
</script>

{#if isShow}
  <div
    class="fixed z-10 inset-0 overflow-y-auto"
    aria-labelledby="modal-title"
    role="dialog"
    aria-modal="true"
  >
    <div
      class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0"
    >
      <div
        class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity"
        aria-hidden="true"
      />

      <span
        class="hidden sm:inline-block sm:align-middle sm:h-screen"
        aria-hidden="true">&#8203;</span
      >

      <div
        class="inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-sm sm:w-full sm:p-6"
      >
        <div class="mt-3 text-center sm:mt-5">
          <h3
            class="text-lg leading-6 font-medium text-gray-900"
            id="modal-title"
          >
            Add new Photo
          </h3>
          <div class="mt-2">
            <p class="text-sm text-gray-500">
              To add a new photo, copy the image address from Facebook and give
              it meaningful alternate text.
            </p>
          </div>
        </div>
        <form class="mt-5 sm:mt-6" on:submit|preventDefault={addPhoto}>
          <div class="rounded-md mb-12">
            <div>
              <label for="src" class="text-sm text-gray700">Image address</label
              >
              <input
                id="src"
                name="src"
                type="text"
                required
                class="relative block w-full px-3 py-2 mb-4 border border-gray200 placeholder-gray300 text-gray900 rounded focus:outline-none focus:ring-0 focus:border-gray400 focus:z-10 sm:text-sm"
                placeholder="https://scontent-bos3-1.xx.fbcdn.net/v/..."
                bind:value={src}
              />
            </div>
            <div>
              <label for="alt" class="text-sm text-gray700"
                >Alternate text</label
              >
              <input
                id="alt"
                name="alt"
                type="text"
                required
                class="relative block w-full px-3 py-2 border border-gray200 placeholder-gray300 text-gray900 rounded focus:outline-none focus:ring-0 focus:border-gray400 focus:z-10 sm:text-sm"
                placeholder="Drywall ceiling patch"
                bind:value={alt}
              />
            </div>
          </div>

          <div class="flex justify-between">
            <button
              type="submit"
              class="inline-flex justify-center w-full rounded-md border border-transparent shadow-sm px-4 py-2 mr-2 bg-green-300 text-base font-medium text-green-800 hover:bg-green-400 sm:text-sm"
            >
              Add
            </button>
            <button
              type="button"
              class="inline-flex justify-center w-full rounded-md border border-transparent shadow-sm px-4 py-2 bg-gray300 text-base font-medium text-gray800 hover:bg-gray400 sm:text-sm"
              on:click={handleModal}
            >
              Cancel
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
{/if}
