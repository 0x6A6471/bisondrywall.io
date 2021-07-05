import supabase from '$lib/db';

/**
 * @type {import('@sveltejs/kit').RequestHandler}
 */
export async function get() {

	const jobs = await supabase.from('jobs').select(`id, position, description, status, pay`);

		return {
			body: {
				jobs
			}
		};
	
}
