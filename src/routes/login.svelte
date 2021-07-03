<script>
  import supabase from '../lib/db';

  async function signUp() {
    // Create a new user
    const { user, error } = await supabase.auth.signUp({
      email: 'hello@jakequinter.io',
      password: 'example-password',
    });
    console.log(user, error);
  }
</script>

<button on:click={signUp}>Login in</button>
