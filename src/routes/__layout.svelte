<script>
  import Container from '../components/Container.svelte';
</script>

<Container />

<!-- The slot refers to the children -->
<slot></slot>

<style>
  @tailwind base;
  @tailwind components;
  @tailwind utilities;
</style>