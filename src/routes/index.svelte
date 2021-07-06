<script>
  import {
    ArrowRightIcon,
    CheckCircleIcon,
    ZapIcon,
  } from 'svelte-feather-icons';

  import Nav from '../components/Nav.svelte';
  import Footer from '../components/shared/Footer.svelte';
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
    <a
      href="mailto:bisondrywallllc@gmail.com"
      class="inline-flex items-center mt-12 px-4 py-2 font-medium rounded-md text-yellow800 bg-yellow500 focus:outline-none"
    >
      Contact us
      <ArrowRightIcon class="ml-2" size="16" />
    </a>
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
                class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#3E3E3E]"
              >
                <CheckCircleIcon size="20" class="text-[#D7B732]" />
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
                class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#3E3E3E]"
              >
                <CheckCircleIcon size="20" class="text-[#D7B732]" />
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
          class="rightImage"
          src="https://image.shutterstock.com/shutterstock/photos/1116716516/display_1500/stock-photo-building-drywall-ceiling-elements-for-led-lighting-caucasian-worker-patching-drywall-1116716516.jpg"
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
                  class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#3E3E3E]"
                >
                  <ZapIcon size="20" class="text-[#D7B732]" />
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
                  class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#3E3E3E]"
                >
                  <ZapIcon size="20" class="text-[#D7B732]" />
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
                  class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#3E3E3E]"
                >
                  <ZapIcon size="20" class="text-[#D7B732]" />
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
            class="leftImage"
            src="https://image.shutterstock.com/image-photo/construction-worker-assemble-suspended-ceiling-600w-794469577.jpg"
            alt="Fixing drywall"
          />
        </div>
      </div>
    </div>
  </div>
</div>

<Testomonials />

<!-- Last two grid sections -->
<div class="py-16 overflow-hidden lg:py-24">
  <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 lg:max-w-7xl">
    <div
      class="relative mt-12 lg:mt-24 md:grid md:grid-cols-2 md:gap-8 md:items-center"
    >
      <div class="relative">
        <h3 class="text-2xl font-extrabold tracking-tight sm:text-3xl">
          Drywall finishing
        </h3>
        <p class="mt-3 text-lg">
          Find that aesthetic of finished drywall that you’re looking for.
        </p>

        <dl class="mt-10 space-y-10">
          <div class="relative">
            <dt>
              <div
                class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#3E3E3E]"
              >
                <CheckCircleIcon size="20" class="text-[#D7B732]" />
              </div>
              <h4 class="ml-16 text-lg leading-6 font-medium ">
                Plaster finishing
              </h4>
            </dt>
            <dd class="mt-2 ml-16 text-base">
              Unfinished drywall doesn’t look the best. Let our professionals
              help get your drywall ready for paint or paper.
            </dd>
          </div>

          <div class="relative">
            <dt>
              <div
                class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#3E3E3E]"
              >
                <CheckCircleIcon size="20" class="text-[#D7B732]" />
              </div>
              <h4 class="ml-16 text-lg leading-6 font-medium">
                Texturing drywall
              </h4>
            </dt>
            <dd class="mt-2 ml-16 text-base">
              Offering sand texture, orange peel texture, knockdown texture, or
              popcorn texture.
            </dd>
          </div>
        </dl>
      </div>

      <div class="mt-10 -mx-4 relative lg:mt-0" aria-hidden="true">
        <img
          class="rightImage"
          src="https://image.shutterstock.com/image-photo/construction-worker-puts-finishing-touch-600w-698339818.jpg"
          alt="plaster"
        />
      </div>
    </div>

    <!-- <div class="relative mt-12 sm:mt-16 lg:mt-24">
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
                  class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#3E3E3E]"
                >
                  <ZapIcon size="20" class="text-[#D7B732]" />
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
                  class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#3E3E3E]"
                >
                  <ZapIcon size="20" class="text-[#D7B732]" />
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
                  class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-[#3E3E3E]"
                >
                  <ZapIcon size="20" class="text-[#D7B732]" />
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
            class="leftImage"
            src="https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/188371028_114823764101399_2062241810618321323_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=110474&_nc_ohc=qSlTG5lz9pYAX-yFut1&_nc_ht=scontent-bos3-1.xx&tp=14&oh=f56e3d3a9d70ce36035fa8916a24723d&oe=60E3AE69"
            alt="Fixing drywall"
          />
        </div>
      </div>
    </div> -->
  </div>
</div>

<div class="bg-[#E6D27F] max-w-screen-md mx-auto rounded">
  <div
    class="flex flex-col justify-center items-center h-full py-16 text-center"
  >
    <h3 class="text-lg md:text-2xl lg:text-4xl">
      Let us help, whatever your needs
    </h3>
    <h4
      class="text-md md:text-lg lg:text-xl mt-2 text-gray600 font-normal max-w-md"
    >
      We work with you and for you to accomplish whatever you need
    </h4>
    <a
      href="mailto:bisondrywallllc@gmail.com"
      class="inline-flex items-center mt-12 px-4 py-2 font-medium rounded-md text-gray100 bg-gray900 focus:outline-none"
    >
      Contact us
      <ArrowRightIcon class="ml-2" size="16" />
    </a>
  </div>
</div>

<Footer />

<style>
  .rightImage {
    max-height: 600px;
    border-radius: 6px;
    margin-left: auto;
  }
  .leftImage {
    max-height: 600px;
    border-radius: 6px;
  }

  @media (max-width: 767px) {
    .rightImage,
    .leftImage {
      margin: 0 auto;
    }
  }
</style>
