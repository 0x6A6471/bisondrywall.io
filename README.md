# [bisondrywall.io](https://bisondrywall.io/)

A friend of mine, Ethan, started a Drywall company and asked for my help building him a website. I used this as an opportunity to make it using technologies that I've become interested in but have never used. These two technologies are Svelte (SvelteKit) and Supabase.

### Overview

- `pages/api/jobs`: API route for retrieving available jobs on the `/careers` page.
- `pages/careers`: Retrieves information from `pages/api/jobs` to display jobs postings.
- `pages/gallery`: Retrieves information from the Facebook Graph API to display all the photos. This prevents duplicate photo uploads for Ethan. Instead, upload to Facebook and they will automatically get pulled onto the website.
- `pages/admin`: This is an authenticated route which displays a UI for Ethan to add or remove jobs.
- `pages/*`: All other pages are static pages.

### Running Locally

```
$ git clone git@github.com:jakequinter/bisondrywall.io.git
$ cd bisondrywall.io
$ yarn
$ yarn dev
```

Create a `.env.local` file similar to what is posted below:

```
VITE_SUPABASE_URL=
VITE_SUPABASE_ANON_KEY=
VITE_FACEBOOK_ACCESS_TOKEN=
```

### Built With

- [Vercel](https://vercel.com/)
- [Next.js](https://nextjs.org/)
- [Supabase](https://supabase.io/)
- [TailwindCSS](https://tailwindcss.com/)
- [Facebook Graph API](https://developers.facebook.com/docs/graph-api/)
