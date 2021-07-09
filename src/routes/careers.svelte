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
  import { MailIcon } from 'svelte-feather-icons';

  import Container from '../components/Container.svelte';

  type Job = {
    id: string;
    position: string;
    description: string;
    status: string;
    pay: string;
  };

  export let jobs: Array<Job>;
</script>

<Container maxWidth="max-w-3xl">
  <div class="text-center mb-24">
    <h1 class="text-2xl md:text-3xl lg:text-4xl">Work with us</h1>
    <h2 class="text-lg lg:text-xl mt-2 text-[#666e75] font-normal">
      Join us in helping satisfy our customers.
    </h2>
  </div>

  <div>
    <h3 class="text-xl md:text-2xl">Open positions</h3>
    {#if jobs.length > 0}
      <hr class="border-t border-gray200 mt-4" />
      {#each jobs as job (job.id)}
        <div
          class="flex justify-between items-center py-4 border-b border-gray200"
        >
          <div>
            <h4 class="font-medium">{job.position}</h4>
            <p class="text-sm mb-2">{job.status} &#8226; {job.pay}/hour</p>
            <p>
              {job.description}
            </p>
          </div>

          <div>
            <a href="mailto:bisondrywallllc@gmail.com">
              <MailIcon
                class="text-gray300 hover:text-gray400 ml-16"
                size="20"
              />
            </a>
          </div>
        </div>
      {/each}
    {:else}
      <p class="pt-4">There are currently no open positions</p>
    {/if}
    <div class="mt-16">
      <h3 class="text-xl md:text-2xl">How to apply</h3>
      <p>
        Please send an email to <a
          class="text-blue-500 hover:underline"
          href="mailto:bisondrywallllc@gmail.com">bisondrywallllc@gmail.com</a
        > with your resume to be considered for our open positions. We look forward
        to hearing from you!
      </p>
    </div>
  </div>
</Container>
