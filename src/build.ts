type Photo = {
  link: string;
  alt_text: string;
  source: string;
};

type FacebookResponse = {
  data?: Photo[];
  error?: string;
};

async function fetchFacebookPhotos(): Promise<Photo[]> {
  const token = process.env.FACEBOOK_API_TOKEN;

  if (!token) {
    console.error("FACEBOOK_API_TOKEN environment variable is not set");
    return [];
  }

  try {
    const response = await fetch(
      "https://graph.facebook.com/v14.0/112096071040835/photos?limit=100&fields=link,alt_text,source",
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
      }
    );

    const data = (await response.json()) as FacebookResponse;

    if (data.error) {
      console.error("Facebook API error:", data.error);
      return [];
    }

    if (data.data) {
      console.log(`✓ Fetched ${data.data.length} photos from Facebook`);
      return data.data;
    }

    console.warn("No photos found in response");
    return [];
  } catch (error) {
    console.error("Unexpected network error:", error);
    return [];
  }
}

async function downloadPhoto(url: string, index: number): Promise<string | null> {
  try {
    const response = await fetch(url);
    if (!response.ok) return null;

    const buffer = await response.arrayBuffer();
    const filename = `photo-${index}.jpg`;
    const filepath = `./public/photos/${filename}`;

    await Bun.write(filepath, buffer);
    return `/photos/${filename}`;
  } catch (error) {
    console.error(`Failed to download photo ${index}:`, error);
    return null;
  }
}


async function generatePhotosJSON() {
  console.log("Fetching photos from Facebook...");
  const photos = await fetchFacebookPhotos();

  await Bun.write("./public/photos/.gitkeep", "");

  console.log("Downloading photos...");
  const localPhotos: Photo[] = [];

  for (let i = 0; i < photos.length; i++) {
    const photo = photos[i];
    if (!photo) continue;

    const localPath = await downloadPhoto(photo.source, i);
    if (localPath) {
      localPhotos.push({
        link: photo.link,
        alt_text: photo.alt_text,
        source: localPath,
      });
      console.log(`✓ Downloaded photo ${i + 1}/${photos.length}`);
    }
  }

  const outputPath = "./public/photos.json";
  await Bun.write(outputPath, JSON.stringify(localPhotos, null, 2));

  console.log(`✓ Saved ${localPhotos.length} photos to ${outputPath}`);
}
generatePhotosJSON();
