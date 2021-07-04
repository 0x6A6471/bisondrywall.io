import supabase from '$lib/db';

/**
 * @type {import('@sveltejs/kit').RequestHandler}
 */
export async function get() {

	const photos = await supabase.from('photos').select(`id, src, alt`);

		return {
			body: {
				photos
			}
		};
	
}
