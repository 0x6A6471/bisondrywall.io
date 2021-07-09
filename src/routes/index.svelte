<script>
  import {
    ArrowRightIcon,
    CheckCircleIcon,
    ZapIcon,
  } from 'svelte-feather-icons';

  import Nav from '../components/Nav.svelte';
  import Footer from '../components/shared/Footer.svelte';
  import Testomonials from '../components/homepage/Testomonials.svelte';
  import ListItem from '../components/homepage/ListItem.svelte';
</script>

<svelte:head>
  <title>Home</title>
</svelte:head>

<div class="jumbotron">
  <Nav linkColor="gray100" />
  <div
    class="flex flex-col justify-center items-center h-full py-32 text-center"
  >
    <h1 class="text-2xl md:text-4xl lg:text-6xl">Your Drywall Solution</h1>
    <h2 class="text-lg md:text-xl lg:text-2xl mt-2 text-gray800 font-normal">
      Drywall and plaster solutions that speak for themselves
    </h2>
    <a
      href="mailto:bisondrywallllc@gmail.com"
      class="btn-grad inline-flex items-center mt-12 px-8 py-4 font-medium rounded-md focus:outline-none"
    >
      Contact us
      <ArrowRightIcon class="ml-2" size="16" />
    </a>
  </div>
</div>

<!-- First two grid sections -->
<div class="py-16 lg:py-40 overflow-hidden">
  <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 lg:max-w-7xl">
    <div
      class="relative mb-16 lg:mb-40 md:grid md:grid-cols-2 md:gap-8 md:items-center"
    >
      <div class="relative">
        <h3 class="text-2xl font-extrabold tracking-tight sm:text-3xl">
          Drywall installation
        </h3>
        <p class="mt-3 text-lg">
          We provide assitance from small patches to entire houses and business.
        </p>

        <dl class="mt-10 space-y-10">
          <ListItem
            title="Residential"
            description="Home extensions, wall additions, or simple patches, we work quickly to
          accomodate any of your drywall needs."
          />
          <ListItem
            title="Commercial"
            description="Looking for upgrades to the office? We help proffessional
            businesses with additions and upgrade their suites."
          />
        </dl>
      </div>

      <div class="mt-10 -mx-4 relative lg:mt-0" aria-hidden="true">
        <img
          class="rightImage max-w-md grayscale"
          src="/homepage/drywall-installation.jpg"
          alt="Person installing drywall"
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
            <ListItem
              title="Drywall cracks or holes"
              description="Our team fixes damaged drywall caused by moisture, poor
            installation, or even the settling of the structure."
              icon="ZapIcon"
            />
            <ListItem
              title="Fire, smoke, or water damage"
              description="Recent fire or pipe burst? We remove the lingering smell of
            smoke or mildew."
              icon="ZapIcon"
            />
            <ListItem
              title="Identify what helps you"
              description="Our team identifies whether repair or replacement is best suited
            for your home or business."
              icon="ZapIcon"
            />
          </dl>
        </div>

        <div class="mt-10 -mx-4 relative lg:mt-0 lg:col-start-1">
          <img
            class="leftImage grayscale"
            src="/homepage/drywall-plaster-repair.jpg"
            alt="Drywall setup for final painting"
          />
        </div>
      </div>
    </div>
  </div>
</div>

<Testomonials />

<!-- Last grid section -->
<div class="py-16 lg:py-40 overflow-hidden">
  <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 lg:max-w-7xl">
    <div class="relative md:grid md:grid-cols-2 md:gap-8 md:items-center">
      <div class="relative">
        <h3 class="text-2xl font-extrabold tracking-tight sm:text-3xl">
          Drywall finishing
        </h3>
        <p class="mt-3 text-lg">
          Find that aesthetic of finished drywall that you’re looking for.
        </p>

        <dl class="mt-10 space-y-10">
          <ListItem
            title="Plaster finishing"
            description="Unfinished drywall doesn’t look the best. Let our professionals
              help get your drywall ready for paint or paper."
          />
          <ListItem
            title="Texturing drywall"
            description="Our team identifies whether repair or replacement is best suited
            for your home or business."
          />
        </dl>
      </div>

      <div class="mt-10 -mx-4 relative lg:mt-0" aria-hidden="true">
        <img
          class="rightImage max-w-md grayscale"
          src="/homepage/drywall-finishing.jpg"
          alt="Plaster finish on hung drywall"
        />
      </div>
    </div>
  </div>
</div>

<div class="test max-w-screen-md mx-auto rounded">
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
  .jumbotron {
    background: linear-gradient(
        to bottom,
        rgba(255, 255, 255, 0.15) 0%,
        rgba(0, 0, 0, 0.15) 100%
      ),
      radial-gradient(
          at top center,
          rgba(255, 255, 255, 0.4) 0%,
          rgba(0, 0, 0, 0.4) 120%
        )
        #989898;
    background-blend-mode: multiply, multiply;
  }

  .btn-grad {
    background-image: linear-gradient(
      to right,
      #d7b732 0%,
      #edde5d 51%,
      #d7b732 100%
    );
  }
  .btn-grad {
    transition: 0.5s;
    background-size: 200% auto;
    color: black;
    box-shadow: 0 0 20px #eee;
    border-radius: 10px;
  }

  .btn-grad:hover {
    background-position: right center; /* change the direction of the change here */
    color: #fff;
    text-decoration: none;
  }

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

  .test {
    background: #cac531; /* fallback for old browsers */
    background: -webkit-linear-gradient(
      to right,
      #f3f9a7,
      #d7b732
    ); /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(
      to right,
      #f3f9a7,
      #d7b732
    ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  }
</style>
