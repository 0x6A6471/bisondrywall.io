<script lang="ts">
  import Container from '../components/Container.svelte';

  type Image = {
    id: number;
    src: string;
  };

  const images = [
    {
      id: 1,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/201944114_122472963336479_6315057402579136556_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=110474&_nc_ohc=eCtyXrFcUbMAX_qO3z3&_nc_ht=scontent-bos3-1.xx&tp=14&oh=e49f5e4fe129132b7e2797d9cca37332&oe=60E4A5B2',
    },
    {
      id: 2,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/201494429_122472933336482_5545259859737432594_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=110474&_nc_ohc=7qEV4iagkZEAX_3v6f8&_nc_ht=scontent-bos3-1.xx&tp=14&oh=5822b1375fb7c6c38584d930de7f5e96&oe=60E470CD',
    },
    {
      id: 3,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/201382993_122472926669816_3310307172690205860_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=110474&_nc_ohc=g9YOcSbzm-IAX-jzLoU&_nc_ht=scontent-bos3-1.xx&tp=14&oh=5487f80431bcd7e586186183074c73e0&oe=60E46759',
    },
    {
      id: 4,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/201255271_122472903336485_1267805305638900593_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=110474&_nc_ohc=KhN8L2Q3XOMAX8FrzJ_&_nc_ht=scontent-bos3-1.xx&tp=14&oh=b7b365e0faa00063690cdf84f104f1f2&oe=60E47153',
    },
    {
      id: 5,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/201313820_122472860003156_4733113849773874786_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=110474&_nc_ohc=EEi3PfvjYAIAX-evz2-&_nc_ht=scontent-bos3-1.xx&tp=14&oh=631faad8d35ddf8dcfa687b594af431d&oe=60E396C3',
    },
    {
      id: 6,
      src: 'https://scontent-bos3-1.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/190826133_116766923907083_3611317413702531098_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=110474&_nc_ohc=NQR9rENqNJMAX9sbSMe&_nc_ht=scontent-bos3-1.xx&tp=14&oh=7ce485d00bbc33df167c2de09ce41bc9&oe=60E4D7A7',
    },
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

  <div class="grid grid-cols-3 gap-1 mb-24">
    {#each images as image (image.id)}
      <img class="image" src={image.src} />
    {/each}
  </div>
</Container>

<style>
  .image {
    border-radius: 6px;
    min-height: 500px;
  }
</style>
