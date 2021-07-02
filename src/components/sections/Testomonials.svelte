<script>
  import Testomonial from '../Testomonial.svelte';
</script>

<div class="bg-[#F1F3FD] py-24 px-4">
  <h3
    class="text-3xl mb-20 font-extrabold tracking-tight sm:text-4xl text-center"
  >
    Loved by the people of Wisconsin
  </h3>
  <div class="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-4 gap-8">
    <Testomonial
      text="Ethan did a high quality job and was super fast!"
      name="Matt Wilfuer"
      city="Appleton, WI"
    />
    <Testomonial
      text="Bison Drywall was a breath of fresh air."
      name="Mike Lee"
      city="Weyauwega, WI"
    />
    <Testomonial
      text="Expectation were met, and prices were very reasonable."
      name="Jordan Fields"
      city="Oshkosh, WI"
    />
    <Testomonial
      text="After this experience I can tell you the choice is simple...Bison Drywall."
      name="Tanner Huntley"
      city="Milwaukee, WI"
    />
  </div>
</div>
