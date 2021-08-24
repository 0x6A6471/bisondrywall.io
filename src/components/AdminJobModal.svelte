<script lang="ts">
  import supabase from '$lib/db';

  import Notification from '../components/shared/Notification.svelte';

  type Notification = {
    type: string;
    heading: string;
    text: string;
  };

  export let notification: Notification | undefined;
  export let isShow: boolean;
  export let handleModal: () => void;
  export let refetchJobs: () => void;

  let position: string = '';
  let description: string = '';
  let status: string = '';
  let pay: string = '';

  async function handleSubmit() {
    if (position === '' || description === '' || status === '' || pay === '') {
      notification = {
        type: 'error',
        heading: 'Error creating job!',
        text: 'Please make sure all the fields are filled in.'
      };
      setTimeout(() => {
        notification = undefined;
      }, 5000);
    } else {
      const newJob = await supabase
        .from('jobs')
        .insert({ position, description, status, pay });

      if (!newJob.error) {
        notification = {
          type: 'success',
          heading: 'Successfully added!',
          text: 'Your job has been added.'
        };
        setTimeout(() => {
          notification = undefined;
        }, 5000);
        refetchJobs();
        handleModal();
      }

      position = '';
      description = '';
      status = '';
      pay = '';
    }
  }
</script>

{#if notification}
  <Notification
    type={notification.type}
    heading={notification.heading}
    text={notification.text}
  />
{/if}

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
        class="fixed inset-0 bg-gray500 bg-opacity-75 transition-opacity"
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
            class="text-lg leading-6 font-medium text-gray900"
            id="modal-title"
          >
            Add new Job
          </h3>
          <div class="mt-2">
            <p class="text-sm text-gray500">
              To add a new job, fill out the information below.
            </p>
          </div>
        </div>
        <form class="mt-5 sm:mt-6" on:submit|preventDefault={handleSubmit}>
          <div class="rounded-md mb-12">
            <div>
              <label for="position" class="text-sm text-gray700 font-medium"
                >Position</label
              >
              <input
                id="position"
                name="position"
                type="text"
                required
                class="relative block w-full px-3 py-2 mb-4 border border-gray200 placeholder-gray300 text-gray900 rounded focus:outline-none focus:ring-0 focus:border-gray400 focus:z-10 sm:text-sm"
                placeholder="Dywall finisher"
                bind:value={position}
              />
            </div>
            <div>
              <label for="pay" class="text-sm text-gray700 font-medium"
                >Pay</label
              >
              <input
                id="pay"
                name="pay"
                type="text"
                required
                class="relative block w-full px-3 py-2 border border-gray200 placeholder-gray300 text-gray900 rounded focus:outline-none focus:ring-0 focus:border-gray400 focus:z-10 sm:text-sm"
                placeholder="$15 - $25"
                bind:value={pay}
              />
            </div>
            <div>
              <p class="text-sm text-gray700 font-medium mt-5">Pay</p>

              <label class="mr-8">
                <input
                  type="radio"
                  bind:group={status}
                  name="status"
                  value="Full-time"
                />
                Full-time
              </label>

              <label>
                <input
                  type="radio"
                  bind:group={status}
                  name="status"
                  value="Part-time"
                />
                Part-time
              </label>
            </div>

            <div>
              <p class="text-sm text-gray700 font-medium mt-5">
                Job description
              </p>
              <textarea class="w-full h-24 rounded" bind:value={description} />
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
