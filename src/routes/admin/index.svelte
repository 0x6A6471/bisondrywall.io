<script>
  import { session } from '$app/stores';
  import { goto } from '$app/navigation';

  import Container from '../../components/Container.svelte';

  // check if Jake or Ethan are logged in
  if (!$session) {
    goto('/login');
  }
</script>

<Container>
  <div class="text-center mb-8">
    <h1 class="text-2xl md:text-3xl lg:text-4xl">Admin</h1>
  </div>

  <div class="flex justify-between max-w-sm mx-auto">
    <a
      href="/admin/jobs"
      class="inline-flex items-center mt-12 px-4 py-2 font-medium rounded-md text-white bg-gray900 focus:outline-none"
    >
      Go to jobs
    </a>

    <a
      href="/admin/photos"
      class="inline-flex items-center mt-12 px-4 py-2 font-medium rounded-md text-white bg-gray900 focus:outline-none"
    >
      Go to photos
    </a>
  </div>
</Container>
