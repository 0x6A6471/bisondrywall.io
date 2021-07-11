<script lang="ts">
  import { CheckCircleIcon, ZapIcon } from 'svelte-feather-icons';

  export let title: string;
  export let description: string;
  export let icon: string = 'CheckCircleIcon';
</script>

<div class="relative">
  <dt>
    <div
      class="itemBackground absolute flex items-center justify-center h-12 w-12 rounded-md"
    >
      {#if icon === 'CheckCircleIcon'}
        <CheckCircleIcon size="20" class="text-[#D7B732]" />
      {:else}
        <ZapIcon size="20" class="text-[#D7B732]" />
      {/if}
    </div>
    <h4 class="ml-16 text-lg leading-6 font-medium ">{title}</h4>
  </dt>
  <dd class="mt-2 ml-16 text-base">
    {description}
  </dd>
</div>

<style>
  .itemBackground {
    background: rgb(34, 35, 40);
    background: radial-gradient(
      circle,
      rgba(34, 35, 40, 1) 0%,
      rgba(57, 58, 62, 1) 50%,
      rgba(34, 35, 40, 1) 100%
    );
    box-shadow: 0 3px 10px #514513;
  }
</style>
