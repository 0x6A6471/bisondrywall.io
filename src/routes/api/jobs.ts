import supabase from '$lib/db';

/**
 * @type {import('@sveltejs/kit').RequestHandler}
 */
export async function get() {

	const jobs = await supabase.from('jobs').select(`*`).order('createdAt', { ascending: false });

		return {
			body: {
				jobs
			}
		};
	
}
