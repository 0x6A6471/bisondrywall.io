<script>
  export let background = 'bg-transparent';
</script>

<nav class={`flex justify-between max-w-7xl ${background} mx-auto p-2`}>
  <a href="/">
    <img class="h-8" src="/logo.png" alt="logo" />
  </a>

  <div>
    <a class="mr-2 hover:text-yellow-500" href="/">Home</a>
    <a class="mx-2 hover:text-yellow-500" href="/gallery">Gallery</a>
    <a class="mx-2 hover:text-yellow-500" href="/careers">Careers</a>
    <a class="ml-2 hover:text-yellow-500" href="/contact">Contact Us</a>
  </div>
</nav>
