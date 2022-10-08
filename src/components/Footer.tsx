import Image from 'next/image';

export default function Footer() {
  return (
    <div className="mt-48 border-t border-gray-600 px-8 xl:px-0">
      <div className="xs:flex-row xs:items-center mx-auto flex max-w-7xl flex-col items-start justify-between py-4">
        <div>
          <Image
            width={47}
            height={20}
            src="/static/images/logo.png"
            alt="Bison Drywall logo"
          />
        </div>
        <div className="xs:mt-0 xs:flex-row xs:space-y-0 xs:space-x-4 mt-4 flex flex-col space-x-0 space-y-4">
          <a
            href="mailto:bisondrywallllc@gmail.com"
            className="xs:mx-2 mx-0 text-xs text-gray-300 hover:text-gray-200"
          >
            Contact Us
          </a>
          <a
            href="https://m.facebook.com/bisondrywall"
            className="xs:mx-2 mx-0 text-xs text-gray-300 hover:text-gray-200"
          >
            Facebook
          </a>
          <a
            href="/privacy"
            className="xs:mx-2 mx-0 text-xs text-gray-300 hover:text-gray-200"
          >
            Privacy
          </a>
          <a
            href="/terms"
            className="xs:mx-2 mx-0 text-xs text-gray-300 hover:text-gray-200"
          >
            Terms of Service
          </a>
        </div>
      </div>
    </div>
  );
}
