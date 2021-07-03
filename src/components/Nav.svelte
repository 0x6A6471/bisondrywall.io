<script>
  import { session } from '$app/stores';
  import { goto } from '$app/navigation';

  import supabase from '../lib/db';
  export let background = 'bg-transparent';

  async function logout() {
    const { error } = await supabase.auth.signOut();
    goto('/');
  }
</script>

<nav class={`flex justify-between max-w-7xl ${background} mx-auto p-4`}>
  <a href="/">
    <img class="h-8" src="/logo.png" alt="logo" />
  </a>

  <div>
    <a class="mr-2 hover:text-yellow500" href="/">Home</a>
    <a class="mx-2 hover:text-yellow500" href="/gallery">Gallery</a>
    <a class="mx-2 hover:text-yellow500" href="/careers">Careers</a>
    <a class="ml-2 hover:text-yellow500" href="/contact">Contact Us</a>
    {#if $session}
      <button
        class="ml-2 text-gray-900 bg-gray100 shadow-sm hover:shadow-md px-2 py-1 rounded-md"
        on:click={logout}>Logout</button
      >
    {/if}
  </div>
</nav>
