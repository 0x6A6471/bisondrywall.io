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
```

### Pulling photos
Generate a [Facebook Graph API](https://developers.facebook.com/docs/graph-api/guides/explorer/) token

> [!IMPORTANT]
> If you want photos, you can run `bun run build` to generate them into `public/photos.json`.
