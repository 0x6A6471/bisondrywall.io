<script>
  import { FacebookIcon } from 'svelte-feather-icons';
</script>

<svelte:head>
  <title>Home</title>
</svelte:head>

<div class="container flex flex-col justify-center items-center h-screen">
  <p class="text-2xl text-gray-400 mb-16">Coming soon...</p>
  <img class="h-80" src="/logo.png" alt="logo" />
  <div class="flex items-center text-gray-500 mt-16 text-lg">
    <span>Find us on</span>
    <a
      class="flex items-center hover:underline cursor-pointer"
      href="https://m.facebook.com/bisondrywall/"
    >
      <FacebookIcon class="text-[#1877f2] -mr-1" size="20" />
      <span>acebook</span>
    </a>
  </div>
</div>

<style>
  .container {
    background: linear-gradient(
      180deg,
      rgba(62, 62, 62, 1) 0%,
      rgba(86, 86, 86, 1) 50%
    );
  }
</style>
