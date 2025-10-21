# bisondrywall.io

### Running Locally

```
$ git clone git@github.com:0x6A6471/bisondrywall.io.git 
$ cd bisondrywall.io
$ bun install
$ bun run dev
```

Create a `.env`:

```
FACEBOOK_API_TOKEN=
FACEBOOK_API_URL=
```

### Pulling photos
Generate a [Facebook Graph API](https://developers.facebook.com/docs/graph-api/guides/explorer/) token

> [!IMPORTANT]
> Run `bun run build` to fetch photos from Facebook and download them to `public/photos/`. This generates `public/photos.json` with local paths.
