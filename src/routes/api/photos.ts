/**
 * @type {import('@sveltejs/kit').RequestHandler}
 */
export async function get() {

	const res = await fetch(
		'https://graph.facebook.com/112096071040835/photos?limit=100&fields=link,alt_text,images',
		{
			method: 'GET',
			headers: {
				Authorization: `Bearer ${import.meta.env.VITE_FACEBOOK_ACCESS_TOKEN}`,
			},
		}
	);

	const photos = await res.json();

		return {
			body: {
				photos: photos
			}
		};
	
}
