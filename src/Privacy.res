module TertiaryLink = {
  @react.component
  let make = (~href: string, ~label: string) => {
    <Next.Link className="text-yellow-base underline hover:opacity-80" href={href}>
      {React.string(label)}
    </Next.Link>
  }
}

let default = () => {
  <div className="mx-auto max-w-4xl space-y-20 px-8 text-base lg:px-0">
    <div className="pt-20">
      <h1 className="text-3xl font-bold uppercase text-white md:text-5xl">
        {"Privacy notice"->React.string}
      </h1>
      <p> {"Last updated December 01, 2022"->React.string} </p>
    </div>
    <section className="space-y-4">
      <div>
        {"Thank you for choosing to be part of our community at Bison Drywall
            LLC. (&quot;Company&quot;, &quot;we&quot;, &quot;us&quot;,
            &quot;our&quot;). We are committed to protecting your personal
            information and your right to privacy. If you have any questions or
            concerns about this privacy notice, or our practices with regards to
            your personal information, please contact us at "->React.string}
        <TertiaryLink href="mailto:bisondrywallllc@gmail.com" label="bisondrywallllc@gmail.com" />
        {"."->React.string}
      </div>
      <div>
        {"When you visit our website "->React.string}
        <TertiaryLink href="https://bisondrywall.io" label="https://bisondrywall.io" />
        {" (the \"Website\"), and more generally, use any of our
            services (the &quot;Services&quot;, which include the Website), we
            appreciate that you are trusting us with your personal information.
            We take your privacy very seriously. In this privacy notice, we seek
            to explain to you in the clearest way possible what information we
            collect, how we use it and what rights you have in relation to it.
            We hope you take some time to read through it carefully, as it is
            important. If there are any terms in this privacy notice that you do
            not agree with, please discontinue use of our Services immediately."->React.string}
      </div>
      <div>
        {"This privacy notice applies to all information collected through our
            Services (which, as described above, includes our Website), as well
            as, any related services, sales, marketing or events."->React.string}
      </div>
      <p className="font-bold text-gray-50">
        {"Please read this privacy notice carefully as it will help you
            understand what we do with the information that we collect."->React.string}
      </p>
    </section>
  </div>
}
