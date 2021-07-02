<script lang="ts">
  export let text: string;
  export let name: string;
  export let city: string;
</script>

<blockquote class="max-w-sm my-8">
  <div class="h-20 lg:h-24">
    <p class="text-gray-900 font-medium">&ldquo;{text}&rdquo;</p>
  </div>
  <div>
    <div class="md:mt-0 flex justify-end">
      <div class="text-base text-gray-700">{name}</div>

      <svg
        class="mx-1 h-5 w-5 text-[#D7B732]"
        fill="currentColor"
        viewBox="0 0 20 20"
      >
        <path d="M11 0h3L9 20H6l5-20z" />
      </svg>

      <div class="text-base text-gray-400">{city}</div>
    </div>
  </div>
</blockquote>
