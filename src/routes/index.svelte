<script>
  import { ArrowRightIcon } from 'svelte-feather-icons';
  import Nav from '../components/Nav.svelte';
</script>

<svelte:head>
  <title>Home</title>
</svelte:head>

<Nav background="bg-[#222328]" />
<div class="bg-[#222328] py-24">
  <div class="flex flex-col justify-center items-center h-full">
    <h1 class="text-6xl text-gray-200">Your Drywall Solution</h1>
    <h2 class="text-2xl mt-2">
      Drywall and plaster solutions that speak for themselves
    </h2>
    <button
      type="button"
      class="inline-flex items-center mt-12 px-4 py-2 font-medium rounded-md text-yellow800 bg-yellow500 focus:outline-none"
    >
      Contact us
      <ArrowRightIcon class="ml-2" size="16" />
    </button>
  </div>
</div>
