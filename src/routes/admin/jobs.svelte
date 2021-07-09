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
    const res = await fetch('/api/jobs');
    const jobs = await res.json();
    if (res.ok) {
      return {
        props: {
          jobs: jobs.jobs.data,
        },
      };
    }
  }
</script>

<script lang="ts">
  import { format } from 'date-fns';
  import { XIcon } from 'svelte-feather-icons';
  import { session } from '$app/stores';
  import { goto } from '$app/navigation';
  import supabase from '$lib/db';
  import Container from '../../components/Container.svelte';
  import AdminJobModal from '../../components/AdminJobModal.svelte';
  import Notification from '../../components/shared/Notification.svelte';

  // check if Jake or Ethan are logged in
  if (!$session) {
    goto('/login');
  }
  type Job = {
    id: string;
    position: string;
    description: string;
    status: string;
    pay: string;
    createdAt: string;
  };

  type Notification = {
    type: string;
    heading: string;
    text: string;
  };

  export let jobs: Array<Job>;
  let notification: Notification | undefined;
  let isShow: boolean = false;
  console.log('hno', notification);
  async function handleDelete(id: string) {
    const { error } = await supabase.from('jobs').delete().match({ id: id });

    if (!error) {
      notification = {
        type: 'success',
        heading: 'Successfully deleted!',
        text: 'Your job has been removed.',
      };
      refetchJobs();
      setTimeout(() => {
        notification = undefined;
      }, 5000);
    } else {
      notification = {
        type: 'error',
        heading: 'Error deleting job!',
        text: error.message,
      };
      setTimeout(() => {
        notification = undefined;
      }, 5000);
    }
  }
  function handleModal() {
    isShow = !isShow;
  }
  async function refetchJobs() {
    const res = await fetch('/api/jobs');
    const data = await res.json();
    // set jobs props client side to match what is on the server
    jobs = data.jobs.data;
  }
</script>

{#if notification}
  <Notification
    type={notification.type}
    heading={notification.heading}
    text={notification.text}
  />
{/if}

<Container>
  <div class="text-center mb-24">
    <h1 class="text-2xl md:text-3xl lg:text-4xl">Jobs</h1>
    <h2 class="text md:textlg lg:text-xl mt-2 text-[#666e75] font-normal">
      Create or delete your job listings
    </h2>
  </div>

  <div class="mb-24 p-2">
    <div class="flex flex-col sm:flex-row justify-between items-center mb-8">
      <div>
        <h3 class="text-xl text-center sm:text-left">Live Job Postings</h3>
        <p class="text-center sm:text-left">
          These are your current jobs being displayed on the careers page.
        </p>
      </div>
      <div>
        <button
          class="bg-white px-4 py-2 mt-4 sm:mt-0 rounded-md shadow-sm text-gray900 border border-gray100 hover:border-gray200 hover:shadow-md"
          on:click={handleModal}>Add new job</button
        >
      </div>
    </div>
    <ul class="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-3">
      {#each jobs as job (job.id)}
        <li
          class="col-span-1 bg-white rounded-lg shadow divide-y divide-gray200"
        >
          <div class="p-6">
            <div class="flex-1">
              <div class="flex items-center justify-between space-x-3">
                <h3 class="font-medium">
                  {job.position}
                </h3>
                <p class="text-sm">{format(new Date(job.createdAt), 'PP')}</p>
              </div>
              <p class="mt-1 text-gray-500 text-xs ">
                {job.status} &#8226; {job.pay}/hour
              </p>
              <p class="mt-4 text-gray-500 text-sm truncate">
                {job.description}
              </p>
            </div>
          </div>
          <div>
            <div class="flex justify-center py-2">
              <div
                class="flex items-center bg-red-200 px-2 py-1 hover:bg-red-300 rounded text-red-700 hover:text-red-900"
              >
                <XIcon class="mr-3" size="20" />
                <button on:click={() => handleDelete(job.id)}>Delete</button>
              </div>
            </div>
          </div>
        </li>
      {/each}
    </ul>
  </div>

  <AdminJobModal {isShow} {handleModal} {refetchJobs} {notification} />
</Container>
