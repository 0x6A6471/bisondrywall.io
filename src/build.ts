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

async function generatePhotosJSON() {
  console.log("Fetching photos from Facebook...");
  const photos = await fetchFacebookPhotos();

  const outputPath = "./public/photos.json";
  await Bun.write(outputPath, JSON.stringify(photos, null, 2));

  console.log(`✓ Saved ${photos.length} photos to ${outputPath}`);
}

generatePhotosJSON();
