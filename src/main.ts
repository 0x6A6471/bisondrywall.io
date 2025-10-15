type Photo = {
  link: string;
  alt_text: string;
  source: string;
};

async function loadPhotos() {
  try {
    const response = await fetch("/photos.json");
    const photos = (await response.json()) as Photo[];

    if (photos.length > 0) {
      renderPhotoMarquee(photos);
    }
  } catch (error) {
    console.error("Error loading photos: ", error);
  }
}

function renderPhotoMarquee(photos: Photo[]) {
  const container = document.getElementById('photo-marquee');
  if (!container) return;

  const firstRow = photos.slice(0, 49);
  const secondRow = photos.slice(49, 100);

  container.innerHTML = `
    <h2 class="md:pl-4 mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 md:max-w-xl md:text-left md:text-5xl">
      Take a look at some before, during, and after photos of our work
    </h2>
    <div class="relative flex flex-col justify-center overflow-hidden">
      <!-- left shadow -->
      <div class="pointer-events-none absolute bottom-0 left-0 top-0 z-10 w-48 bg-gradient-to-r from-[#161616] via-[#161616]/30 to-transparent"></div>
      <div class="pointer-events-none relative flex gap-x-4 overflow-hidden">
        <div class="animate-marquee flex min-w-full shrink-0 items-center justify-around gap-x-4">
          ${firstRow.map(photo => `
            <img
              src="${photo.source}"
              alt="${photo.alt_text || 'Bison Drywall work'}"
              class="h-[400px] w-[300px] max-w-[clamp(20rem,28vmin,20rem)] rounded-md object-cover shadow-md"
            />
          `).join('')}
        </div>
      </div>
      <div class="pointer-events-none relative mt-4 flex gap-x-4 overflow-hidden justify-end">
        <div class="animate-marquee-reverse flex min-w-full shrink-0 items-center justify-around gap-x-4">
          ${secondRow.map(photo => `
            <img
              src="${photo.source}"
              alt="${photo.alt_text || 'Bison Drywall work'}"
              class="h-[400px] w-[300px] max-w-[clamp(20rem,28vmin,20rem)] rounded-md object-cover shadow-md"
            />
          `).join('')}
        </div>
      </div>
      <!-- right shadow -->
      <div class="pointer-events-none absolute bottom-0 right-0 top-0 z-10 w-48 bg-gradient-to-l from-[#161616] via-[#161616]/30 to-transparent"></div>
    </div>
    <div>
      <a class="hover-arrow float-right mt-4 inline-flex items-center text-gray-50 relative z-20" href="https://m.facebook.com/bisondrywall">
        Check us out on Facebook
        <svg class="fill-yellow-base ml-2" width="18" height="18">
          <use href="/sprite.svg#arrow-right"></use>
        </svg>
      </a>
    </div>
  `;
}

loadPhotos();
