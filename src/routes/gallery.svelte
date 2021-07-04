<script lang="ts">
  import supabase from '$lib/db';

  import Container from '../components/Container.svelte';

  const test = [
    {
      id: 7,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/186566645_114823867434722_4279933933208619364_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=110474&_nc_ohc=EnAgTJOdNGMAX_EElzp&_nc_ht=scontent-bos3-1.xx&tp=14&oh=c2c08a553f38defc20986a151f0a4dda&oe=60E51E5E',
    },
    {
      id: 8,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/188844945_114823747434734_2032650923385843555_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=110474&_nc_ohc=jj_uyYYbaH0AX-feCWb&_nc_ht=scontent-bos3-1.xx&tp=14&oh=65eabd955daf45675f292de5229f91cd&oe=60E3B101',
    },
    {
      id: 9,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/188335918_114823724101403_6933675602497872857_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=110474&_nc_ohc=2E8vKVyATgwAX-ZIpcD&_nc_ht=scontent-bos3-1.xx&tp=14&oh=01beb98c5f7bcdaa7c275b04c1c5a284&oe=60E37AF1',
    },
    {
      id: 10,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/185746862_114823670768075_2708466643053952430_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=110474&_nc_ohc=3YW31gczvhoAX_UFEqk&_nc_ht=scontent-bos3-1.xx&tp=14&oh=e4a7d6dd3b2ea7fffcfdf22b12a7285e&oe=60E40EB3',
    },
    {
      id: 11,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/191924640_116766727240436_889756997957745352_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=110474&_nc_ohc=Uht1RP1-dkwAX-q6Nsj&_nc_ht=scontent-bos3-1.xx&tp=14&oh=a8f80901b5e4bc3cb5911a3875c3be16&oe=60E39914',
    },
    {
      id: 12,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/187662391_114823820768060_4352028745879392945_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=110474&_nc_ohc=cxddN46hrLQAX-H25XJ&_nc_ht=scontent-bos3-1.xx&tp=14&oh=b431b03b0e99cea3f05b11e784c75bf2&oe=60E54484',
    },
  ];

  async function getPhotos() {
    return await supabase.from('photos').select(`id, src, alt`);
  }
</script>

<svelte:head>
  <title>Gallery</title>
</svelte:head>

<Container>
  <div class="text-center mb-24">
    <h1 class="text-2xl md:text-3xl lg:text-4xl">
      Work that speaks for itself
    </h1>
    <h2 class="text md:textlg lg:text-xl mt-2 text-[#666e75] font-normal">
      Take a look at some of our past work
    </h2>
  </div>

  <div
    class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2 mb-24 px-2 lg:px-0"
  >
    {#await getPhotos() then response}
      {#each response.data as image (image.id)}
        <img class="image" src={image.src} alt={image.alt} />
      {/each}
    {/await}
  </div>
</Container>

<style>
  .image {
    border-radius: 6px;
    min-height: 500px;
  }
</style>
