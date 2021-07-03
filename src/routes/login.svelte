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

<div
  class="min-h-screen flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8"
>
  <div class="max-w-md w-full space-y-8">
    <div>
      <img class="mx-auto h-12 w-auto" src="/logo.png" alt="Workflow" />
      <h2 class="mt-6 text-center text-3xl font-extrabold">
        Sign in to your account
      </h2>
    </div>
    <form class="mt-8 space-y-6" on:submit|preventDefault={login}>
      <input type="hidden" name="remember" value="true" />
      <div class="rounded-md shadow-sm -space-y-px">
        <div>
          <label for="email" class="sr-only">Email address</label>
          <input
            id="email"
            name="email"
            type="email"
            autocomplete="email"
            required
            class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray200 placeholder-gray300 text-gray900 rounded-t-md focus:outline-none focus:ring-0 focus:border-gray400 focus:z-10 sm:text-sm"
            placeholder="Email address"
            bind:value={email}
          />
        </div>
        <div>
          <label for="password" class="sr-only">Password</label>
          <input
            id="password"
            name="password"
            type="password"
            autocomplete="current-password"
            required
            class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray200 placeholder-gray300 text-gray900 rounded-b-md focus:outline-none focus:ring-0 focus:border-gray400 focus:z-10 sm:text-sm"
            placeholder="Password"
            bind:value={password}
          />
        </div>
      </div>

      <div>
        <button
          type="submit"
          class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-yellow500 bg-gray900 hover:bg-gray800 focus:outline-none"
        >
          Sign in
        </button>
      </div>
    </form>

    <div class="rounded-md bg-yellow-100 p-4">
      <div class="flex">
        <div class="flex-shrink-0">
          <svg
            class="h-5 w-5 text-yellow-400"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 20 20"
            fill="currentColor"
            aria-hidden="true"
          >
            <path
              fill-rule="evenodd"
              d="M8.257 3.099c.765-1.36 2.722-1.36 3.486 0l5.58 9.92c.75 1.334-.213 2.98-1.742 2.98H4.42c-1.53 0-2.493-1.646-1.743-2.98l5.58-9.92zM11 13a1 1 0 11-2 0 1 1 0 012 0zm-1-8a1 1 0 00-1 1v3a1 1 0 002 0V6a1 1 0 00-1-1z"
              clip-rule="evenodd"
            />
          </svg>
        </div>
        <div class="ml-3">
          <h3 class="text-sm font-bold text-yellow-800">Attention</h3>
          <div class="mt-2 text-sm text-yellow-700">
            <p>
              This login form is intended for the <span class="font-bold"
                >owner or developer</span
              >
              of this site only. If you are not either the owner or developer, please
              click <a class="text-blue-500 underline" href="/">here</a>.
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
