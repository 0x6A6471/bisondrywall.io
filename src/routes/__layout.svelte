<script>
  import Container from '../components/Container.svelte';
</script>

<Container />

<!-- This is the children -->
<slot></slot>

<style>
  @tailwind base;
  @tailwind components;
  @tailwind utilities;
</style>