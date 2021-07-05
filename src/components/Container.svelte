<script lang="ts">
  import Nav from './Nav.svelte';

  export let maxWidth: string = 'max-w-5xl';
</script>

<div>
  <Nav />
  <div class={`${maxWidth} mx-auto mt-24 p-2 md:p-0`}>
    <slot />
  </div>
</div>
