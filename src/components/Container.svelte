<script lang="ts">
  import Nav from './Nav.svelte';
  import Footer from './shared/Footer.svelte';

  export let maxWidth: string = 'max-w-5xl';
</script>

<div>
  <Nav />
  <div class={`container ${maxWidth} mx-auto mt-24 p-2 md:p-0`}>
    <slot />
  </div>
  <Footer />
</div>

<style>
  .container {
    min-height: calc(100vh - 320px);
  }
</style>
