<script lang="ts">
  import { CheckCircleIcon, XCircleIcon } from 'svelte-feather-icons';

  export let type: string;
  export let heading: string;
  export let text: string;
</script>

<div
  aria-live="assertive"
  class="fixed inset-0 flex items-end px-4 py-6 pointer-events-none sm:p-6 sm:items-start z-20"
>
  <div class="w-full flex flex-col items-center space-y-4 sm:items-end">
    <div
      class="max-w-sm w-full bg-white shadow-lg rounded-lg pointer-events-auto ring-1 ring-black ring-opacity-5 overflow-hidden"
    >
      <div class="p-4">
        <div class="flex items-start">
          <div class="flex-shrink-0">
            {#if type === 'success'}
              <CheckCircleIcon class="text-green-500" size="20" />
            {:else}
              <XCircleIcon class="text-red-500" size="20" />
            {/if}
          </div>
          <div class="ml-3 w-0 flex-1 pt-0.5">
            <p class="text-sm font-medium text-gray-900">{heading}</p>
            <p class="mt-1 text-sm text-gray-500">
              {text}
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
