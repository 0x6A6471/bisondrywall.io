<script lang="ts">
  import { goto } from '$app/navigation';

  import supabase from '../lib/db';

  let email: string;
  let password: string;

  async function login() {
    const { user, error } = await supabase.auth.signIn({
      email,
      password,
    });

    if (user.email === 'hello@jakequinter.io') {
      goto('/admin');
    }

    if (error) alert('Error: cannot sign in');
  }
</script>

<form on:submit|preventDefault={login}>
  <label for="email">Email</label>
  <input bind:value={email} />

  <label for="password">Password</label>
  <input bind:value={password} />

  <button>login</button>
</form>
