<script>
  import { session } from '$app/stores';
  import { goto } from '$app/navigation';

  import supabase from '../lib/db';
  import Container from '../components/Container.svelte';

  // check if Jake or Ethan are logged in
  if (!$session) {
    goto('/login');
  }

  async function logout() {
    const { error } = await supabase.auth.signOut();
    goto('/');
  }
</script>

<Container>
  <button on:click={logout}>Logout</button>
</Container>
