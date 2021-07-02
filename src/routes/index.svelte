<script>
  import { ArrowRightIcon } from 'svelte-feather-icons';

  import Nav from '../components/Nav.svelte';
  import Testomonials from '../components/sections/Testomonials.svelte';
</script>

<svelte:head>
  <title>Home</title>
</svelte:head>

<div class="bg-[#222328]">
  <Nav />
  <div
    class="flex flex-col justify-center items-center h-full py-24 text-center"
  >
    <h1 class="text-2xl md:text-4xl lg:text-6xl text-gray-200">
      Your Drywall Solution
    </h1>
    <h2 class="text-lg md:text-xl lg:text-2xl mt-2 text-[#666e75] font-normal">
      Drywall and plaster solutions that speak for themselves
    </h2>
    <button
      type="button"
      class="inline-flex items-center mt-12 px-4 py-2 font-medium rounded-md text-yellow800 bg-yellow500 focus:outline-none"
    >
      Contact us
      <ArrowRightIcon class="ml-2" size="16" />
    </button>
  </div>
</div>

<!-- First two grid sections -->
<div class="py-16 overflow-hidden lg:py-24">
  <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 lg:max-w-7xl">
    <div
      class="relative mt-12 lg:mt-24 md:grid md:grid-cols-2 md:gap-8 md:items-center"
    >
      <div class="relative">
        <h3 class="text-2xl font-extrabold tracking-tight sm:text-3xl">
          Drywall installation
        </h3>
        <p class="mt-3 text-lg">
          We provide assitance from small patches to entire houses and business.
        </p>

        <dl class="mt-10 space-y-10">
          <div class="relative">
            <dt>
              <div
                class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#514513]"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-6 w-6"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#D7B732"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                  />
                </svg>
              </div>
              <h4 class="ml-16 text-lg leading-6 font-medium ">Residential</h4>
            </dt>
            <dd class="mt-2 ml-16 text-base">
              Home extensions, wall additions, or simple patches, we work
              quickly to accomodate any of your drywall needs.
            </dd>
          </div>

          <div class="relative">
            <dt>
              <div
                class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#514513]"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-6 w-6"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#D7B732"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"
                  />
                </svg>
              </div>
              <h4 class="ml-16 text-lg leading-6 font-medium">Commercial</h4>
            </dt>
            <dd class="mt-2 ml-16 text-base">
              Looking for upgrades to the office? We help proffessional
              businesses with additions and upgrade their suites.
            </dd>
          </div>
        </dl>
      </div>

      <div class="mt-10 -mx-4 relative lg:mt-0" aria-hidden="true">
        <img
          class="image"
          src="https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/191208448_116767007240408_5069716486836646362_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=110474&_nc_ohc=I5SZwKoFrbQAX8zX1Oe&_nc_ht=scontent-bos3-1.xx&tp=14&oh=67c34c4be21b47d249c6ef1716c34183&oe=60E3B443"
          alt="plaster"
        />
      </div>
    </div>

    <div class="relative mt-12 sm:mt-16 lg:mt-24">
      <div
        class="md:grid md:grid-flow-row-dense md:grid-cols-2 md:gap-8 md:items-center"
      >
        <div class="md:col-start-2">
          <h3 class="text-2xl font-extrabold tracking-tight sm:text-3xl">
            Drywall and plaster repair
          </h3>
          <p class="mt-3 text-lg">
            Sometimes you don’t need to completely replace damaged drywall. Our
            team of professionals fix damages to save you money.
          </p>

          <dl class="mt-10 space-y-10">
            <div class="relative">
              <dt>
                <div
                  class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#514513]"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-6 w-6"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#D7B732"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M5 13l4 4L19 7"
                    />
                  </svg>
                </div>
                <h4 class="ml-16 text-lg leading-6 font-medium">
                  Drywall cracks or holes
                </h4>
              </dt>
              <dd class="mt-2 ml-16 text-base">
                Our team fixes damaged drywall caused by moisture, poor
                installation, or even the settling of the structure.
              </dd>
            </div>

            <div class="relative">
              <dt>
                <div
                  class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#514513]"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-6 w-6"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#D7B732"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M17.657 18.657A8 8 0 016.343 7.343S7 9 9 10c0-2 .5-5 2.986-7C14 5 16.09 5.777 17.656 7.343A7.975 7.975 0 0120 13a7.975 7.975 0 01-2.343 5.657z"
                    />
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9.879 16.121A3 3 0 1012.015 11L11 14H9c0 .768.293 1.536.879 2.121z"
                    />
                  </svg>
                </div>
                <h4 class="ml-16 text-lg leading-6 font-medium">
                  Fire, smoke, or water damage
                </h4>
              </dt>
              <dd class="mt-2 ml-16 text-base">
                Recent fire or pipe burst? We remove the lingering smell of
                smoke or mildew.
              </dd>
            </div>

            <div class="relative">
              <dt>
                <div
                  class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#514513]"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-6 w-6"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#D7B732"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"
                    />
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"
                    />
                  </svg>
                </div>
                <h4 class="ml-16 text-lg leading-6 font-medium">
                  Identify what helps you
                </h4>
              </dt>
              <dd class="mt-2 ml-16 text-base">
                Our team identifies whether repair or replacement is best suited
                for your home or business.
              </dd>
            </div>
          </dl>
        </div>

        <div class="mt-10 -mx-4 relative lg:mt-0 lg:col-start-1">
          <img
            class="image"
            src="https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/188371028_114823764101399_2062241810618321323_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=110474&_nc_ohc=qSlTG5lz9pYAX-yFut1&_nc_ht=scontent-bos3-1.xx&tp=14&oh=f56e3d3a9d70ce36035fa8916a24723d&oe=60E3AE69"
            alt="Fixing drywall"
          />
        </div>
      </div>
    </div>
  </div>
</div>

<Testomonials />

<style>
  .image {
    max-height: 600px;
    margin: 0 auto;
    border-radius: 6px;
  }
</style>
