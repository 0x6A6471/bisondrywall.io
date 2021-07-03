<script>
  import { session } from '$app/stores';
  import { goto } from '$app/navigation';

  import Container from '../components/Container.svelte';

  // check if Jake or Ethan are logged in
  if (!$session) {
    goto('/login');
  }
</script>

<Container>admin ui</Container>
