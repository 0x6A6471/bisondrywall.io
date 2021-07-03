<script>
  import '../app.postcss';

  import supabase from '../lib/db';
  import { session } from '$app/stores';
  import { browser } from '$app/env';
  import '../../styles/global.css';
  import { goto } from '$app/navigation';

  // only run this function when in the browser
  if (browser) {
    // use this because the below doesn't run right away
    $session = supabase.auth.session();

    // this doesn't run on first mount
    supabase.auth.onAuthStateChange((event, sbSession) => {
      $session = sbSession;
    });
  }
</script>

<div>
  <slot />

  <pre
    class="mt-12 w-96 overflow-scroll">{JSON.stringify($session, null, 2)}</pre>
</div>
