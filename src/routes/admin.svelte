<script>
  import supabase from '../lib/db';
  import Container from '../components/Container.svelte';

  async function logout() {
    const { error } = await supabase.auth.signOut();
  }
</script>

<Container>
  <button on:click={logout}>Logout</button>
</Container>
