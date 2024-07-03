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
    <Next.Head>
      <title> {"Bison Drywall | Privacy"->React.string} </title>
    </Next.Head>
    <div className="pt-20">
      <h1 className="text-3xl font-bold uppercase text-white md:text-5xl">
        {"Privacy notice"->React.string}
      </h1>
      <p> {"Last updated December 01, 2022"->React.string} </p>
    </div>
    <section className="space-y-4">
      <div>
        {"Thank you for choosing to be part of our community at Bison Drywall
            LLC. (\"Company\", \"we\", \"us\",
            \"our\"). We are committed to protecting your personal
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
            services (the \"Services\", which include the Website), we
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
    <section className="space-y-4">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"Table of contents"->React.string}
      </h2>
      <ol className="ml-8 list-outside list-decimal space-y-1">
        <li>
          <TertiaryLink href="#1" label="How do we use your information?" />
        </li>
        <li>
          <TertiaryLink href="#2" label="Will your information be shared with anyone?" />
        </li>
        <li>
          <TertiaryLink href="#3" label="Is your information transferred internationally?" />
        </li>
        <li>
          <TertiaryLink href="#4" label="How long do we keep your information?" />
        </li>
        <li>
          <TertiaryLink href="#5" label="How do we keep your information safe?" />
        </li>
        <li>
          <TertiaryLink href="#6" label="What are your privacy rights?" />
        </li>
        <li>
          <TertiaryLink href="#7" label="Controls for do-not-track features" />
        </li>
        <li>
          <TertiaryLink href="#8" label="Do California residents have specific privacy rights?" />
        </li>
        <li>
          <TertiaryLink href="#9" label="Do we make updates to this notice?" />
        </li>
        <li>
          <TertiaryLink href="#10" label="How can you contact us about this notice?" />
        </li>
      </ol>
    </section>
    <section id="1" className="space-y-4">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"How do we use your information?"->React.string}
      </h2>
      <p className="italic">
        <span className="font-medium"> {"In Short:"->React.string} </span>
        {"We process your
            information for purposes based on legitimate business interests, the
            fulfillment of our contract with you, compliance with our legal
            obligations, and/or your consent."->React.string}
      </p>
      <p>
        {"We use personal information collected via our Website for a variety
            of business purposes described below. We process your personal
            information for these purposes in reliance on our legitimate
            business interests, in order to enter into or perform a contract
            with you, with your consent, and/or for compliance with our legal
            obligations. We indicate the specific processing grounds we rely on
            next to each purpose listed below."->React.string}
      </p>
      <div>
        <p> {"We use the information we collect or receive:"->React.string} </p>
        <ul className="ml-8 list-outside list-disc space-y-1">
          <li>
            <span className="font-medium text-gray-50">
              {"To send administrative information to you. "->React.string}
            </span>
            {"We may use your personal information to send you product,
                service and new feature information and/or information about
                changes to our terms, conditions, and policies."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"To protect our Services "->React.string}
            </span>
            {"We may use your information as part of our efforts to keep our
                Website safe and secure (for example, for fraud monitoring and
                prevention)."->React.string}
          </li>
          <li className="font-medium text-gray-50">
            {"To enforce our terms, conditions and policies for business
                purposes, to comply with legal and regulatory requirements or in
                connection with our contract."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"To respond to legal requests and prevent harm. "->React.string}
            </span>
            {"If we receive a subpoena or other legal request, we may need to
                inspect the data we hold to determine how to respond."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"Fulfill and manage your orders. "->React.string}
            </span>
            {"We may use your information to fulfill and manage your orders,
                payments, returns, and exchanges made through the Website."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"Administer prize draws and competitions. "->React.string}
            </span>
            {"We may use your information to administer prize draws and
                competitions when you elect to participate in our competitions."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"To deliver and facilitate delivery of services to the user. "->React.string}
            </span>
            {"We may use your information to provide you with the requested
                service."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"To respond to user inquiries/offer support to users. "->React.string}
            </span>
            {"We may use your information to respond to your inquiries and
                solve any potential issues you might have with the use of our
                Services."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"To send you marketing and promotional communications. "->React.string}
            </span>
            {"We and/or our third-party marketing partners may use the
                personal information you send to us for our marketing purposes,
                if this is in accordance with your marketing preferences. For
                example, when expressing an interest in obtaining information
                about us or our Website, subscribing to marketing or otherwise
                contacting us, we will collect personal information from you.
                You can opt-out of our marketing emails at any time (see the
                \"WHAT ARE YOUR PRIVACY RIGHTS?\" below)."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"Deliver targeted advertising to you. "->React.string}
            </span>
            {"We may use your information to develop and display personalized
                content and advertising (and work with third parties who do so)
                tailored to your interests and/or location and to measure its
                effectiveness."->React.string}
          </li>
        </ul>
      </div>
    </section>
    <section id="2" className="space-y-4">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"Will your information be shared with anyone?"->React.string}
      </h2>
      <p className="italic">
        <span className="font-medium"> {"In Short:"->React.string} </span>
        {"We only share
            information with your consent, to comply with laws, to provide you
            with services, to protect your rights, or to fulfill business
            obligations."->React.string}
      </p>
      <div>
        <p>
          {"We may process or share your data that we hold based on the
              following legal basis:"->React.string}
        </p>
        <ul className="ml-8 list-outside list-disc space-y-1">
          <li>
            <span className="font-medium text-gray-50"> {"Consent:"->React.string} </span>
            {"We
                may process your data if you have given us specific consent to
                use your personal information for a specific purpose."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"Legitimate Interests: "->React.string}
            </span>
            {"We may process your data when it is reasonably necessary to
                achieve our legitimate business interests."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"Performance of a Contract: "->React.string}
            </span>
            {"Where we have entered into a contract with you, we may process
                your personal information to fulfill the terms of our contract."->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"Legal Obligations: "->React.string}
            </span>
            {"We may disclose your information where we believe it is
                necessary to investigate, prevent, or take action regarding
                potential violations of our policies, suspected fraud,
                situations involving potential threats to the safety of any
                person and illegal activities, or as evidence in litigation in
                which we are involved. More specifically, we may need to process
                your data or share your personal information in the following
                situations:"->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50"> {"Vital Interests: "->React.string} </span>
            {"We may disclose your information where we believe it is
                necessary to investigate, prevent, or take action regarding
                potential violations of our policies, suspected fraud,
                situations involving potential threats to the safety of any
                person and illegal activities, or as evidence in litigation in
                which we are involved."->React.string}
            <br />
            {"More specifically, we may need to process your data or share
                your personal information in the following situations:"->React.string}
          </li>
          <li>
            <span className="font-medium text-gray-50">
              {"Business Transfers: "->React.string}
            </span>
            {"We may share or transfer your information in connection with, or
                during negotiations of, any merger, sale of company assets,
                financing, or acquisition of all or a portion of our business to
                another company."->React.string}
          </li>
        </ul>
      </div>
    </section>
    <section id="3" className="space-y-4">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"Is your information transferred internationally?"->React.string}
      </h2>
      <p className="italic">
        <span className="font-medium"> {"In Short:"->React.string} </span>
        {"We may transfer,
            store, and process your information in countries other than your
            own."->React.string}
      </p>
      <p>
        {"Our servers are located in the United States. If you are accessing
            our Website from outside, please be aware that your information may
            be transferred to, stored, and processed by us in our facilities and
            by those third parties with whom we may share your personal
            information (see \"WILL YOUR INFORMATION BE SHARED WITH
            ANYONE?\" above), in and other countries."->React.string}
      </p>
      <p>
        {"If you are a resident in the European Economic Area (EEA) or United
            Kingdom (UK), then these countries may not necessarily have data
            protection laws or other similar laws as comprehensive as those in
            your country. We will however take all necessary measures to protect
            your personal information in accordance with this privacy notice and
            applicable law."->React.string}
      </p>
    </section>
    <section id="4" className="space-y-4">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"How long do we keep your information?"->React.string}
      </h2>
      <p className="italic">
        <span className="font-medium"> {"In Short:"->React.string} </span>
        {"We keep your
            information for as long as necessary to fulfill the purposes
            outlined in this privacy notice unless otherwise required by law."->React.string}
      </p>
      <p>
        {"We will only keep your personal information for as long as it is
            necessary for the purposes set out in this privacy notice, unless a
            longer retention period is required or permitted by law (such as
            tax, accounting or other legal requirements). No purpose in this
            notice will require us keeping your personal information for longer
            than 90 days."->React.string}
      </p>
      <p>
        {"When we have no ongoing legitimate business need to process your
            personal information, we will either delete or anonymize such
            information, or, if this is not possible (for example, because your
            personal information has been stored in backup archives), then we
            will securely store your personal information and isolate it from
            any further processing until deletion is possible."->React.string}
      </p>
    </section>
    <section id="5" className="space-y-4">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"How do we keep your information safe?"->React.string}
      </h2>
      <p className="italic">
        <span className="font-medium"> {"In Short:"->React.string} </span>
        {"We aim to protect your
            personal information through a system of organizational and
            technical security measures."->React.string}
      </p>
      <p>
        {"We have implemented appropriate technical and organizational
            security measures designed to protect the security of any personal
            information we process. However, despite our safeguards and efforts
            to secure your information, no electronic transmission over the
            Internet or information storage technology can be guaranteed to be
            100% secure, so we cannot promise or guarantee that hackers,
            cybercriminals, or other unauthorized third parties will not be able
            to defeat our security, and improperly collect, access, steal, or
            modify your information. Although we will do our best to protect
            your personal information, transmission of personal information to
            and from our Website is at your own risk. You should only access the
            Website within a secure environment."->React.string}
      </p>
    </section>
    <section id="6" className="space-y-4">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"What are your privacy rights?"->React.string}
      </h2>
      <p className="italic">
        <span className="font-medium"> {"In Short:"->React.string} </span>
        {"You may review,
            change, or terminate your account at any time."->React.string}
      </p>
      <p>
        {"If you are a resident in the EEA or UK and you believe we are
            unlawfully processing your personal information, you also have the
            right to complain to your local data protection supervisory
            authority. You can find their contact details here: "->React.string}
        <TertiaryLink
          href="http://ec.europa.eu/justice/data-protection/bodies/authorities/index_en.htm"
          label="http://ec.europa.eu/justice/data-protection/bodies/authorities/index_en.htm"
        />
        {"."->React.string}
      </p>
      <p>
        {"If you are a resident in Switzerland, the contact details for the
            data protection authorities are available here: "->React.string}
        <TertiaryLink
          href="https://www.edoeb.admin.ch/edoeb/en/home.html"
          label="https://www.edoeb.admin.ch/edoeb/en/home.html"
        />
      </p>
    </section>
    <section id="7" className="space-y-4">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"Controls for do-not-track features"->React.string}
      </h2>
      <p>
        {"Most web browsers and some mobile operating systems and mobile
            applications include a Do-Not-Track (\"DNT\") feature or
            setting you can activate to signal your privacy preference not to
            have data about your online browsing activities monitored and
            collected. At this stage no uniform technology standard for
            recognizing and implementing DNT signals has been finalized. As
            such, we do not currently respond to DNT browser signals or any
            other mechanism that automatically communicates your choice not to
            be tracked online. If a standard for online tracking is adopted that
            we must follow in the future, we will inform you about that practice
            in a revised version of this privacy notice."->React.string}
      </p>
    </section>
    <section id="8" className="space-y-4">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"Do California residents have specific privacy rights?"->React.string}
      </h2>
      <p className="italic">
        <span className="font-medium"> {"In Short:"->React.string} </span>
        {"Yes, if you are a
            resident of California, you are granted specific rights regarding
            access to your personal information."->React.string}
      </p>
      <p>
        {"California Civil Code Section 1798.83, also known as the \"Shine
            The Light\" law, permits our users who are California residents
            to request and obtain from us, once a year and free of charge,
            information about categories of personal information (if any) we
            disclosed to third parties for direct marketing purposes and the
            names and addresses of all third parties with which we shared
            personal information in the immediately preceding calendar year. If
            you are a California resident and would like to make such a request,
            please submit your request in writing to us using the contact
            information provided below."->React.string}
      </p>
      <p>
        {"If you are under 18 years of age, reside in California, and have a
            registered account with the Website, you have the right to request
            removal of unwanted data that you publicly post on the Website. To
            request removal of such data, please contact us using the contact
            information provided below, and include the email address associated
            with your account and a statement that you reside in California. We
            will make sure the data is not publicly displayed on the Website,
            but please be aware that the data may not be completely or
            comprehensively removed from all our systems (e.g. backups, etc.)."->React.string}
      </p>
    </section>
    <section id="9" className="space-y-4">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"Do we make changes to this notice?"->React.string}
      </h2>
      <p className="italic">
        <span className="font-medium"> {"In Short:"->React.string} </span>
        {"Yes, we will update
            this notice as necessary to stay compliant with relevant laws."->React.string}
      </p>
      <p>
        {"We may update this privacy notice from time to time. The updated
            version will be indicated by an updated \"Revised\" date and
            the updated version will be effective as soon as it is accessible.
            If we make material changes to this privacy notice, we may notify
            you either by prominently posting a notice of such changes or by
            directly sending you a notification. We encourage you to review this
            privacy notice frequently to be informed of how we are protecting
            your information."->React.string}
      </p>
    </section>
    <section id="10" className="space-y-4 pb-20">
      <h2 className="mb-8 text-xl font-bold uppercase text-white md:text-2xl">
        {"How can you contact us about this notice?"->React.string}
      </h2>
      <p>
        {"If you have questions or comments about this notice, you may email
            us at "->React.string}
        <TertiaryLink href="mailto:bisondrywallllc@gmail.com" label="bisondrywallllc@gmail.com" />
        {" or by post to:"->React.string}
      </p>
      <div>
        <p> {"Bison Drywall LLC."->React.string} </p>
        <p> {"Menasha, WI 54952"->React.string} </p>
        <p> {"United States"->React.string} </p>
      </div>
    </section>
  </div>
}
