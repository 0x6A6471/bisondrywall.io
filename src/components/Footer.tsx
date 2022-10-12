import Image from 'next/image';
import Link from 'next/link';

export default function Footer() {
  return (
    <div className="mt-48 border-t border-gray-600 px-8 xl:px-0">
      <div className="mx-auto flex max-w-7xl flex-col items-start justify-between py-4 xs:flex-row xs:items-center">
        <div>
          <Image
            width={47}
            height={20}
            src="/static/images/logo.png"
            alt="Bison Drywall logo"
          />
        </div>
        <div className="mt-4 flex flex-col space-x-0 space-y-4 xs:mt-0 xs:flex-row xs:space-y-0 xs:space-x-4">
          <Link href="mailto:bisondrywallllc@gmail.com" passHref>
            <a className="mx-0 text-xs text-gray-300 hover:text-gray-200 xs:mx-2">
              Contact Us
            </a>
          </Link>
          <Link href="https://m.facebook.com/bisondrywall" passHref>
            <a className="mx-0 text-xs text-gray-300 hover:text-gray-200 xs:mx-2">
              Facebook
            </a>
          </Link>
          <Link href="/privacy" passHref>
            <a className="mx-0 text-xs text-gray-300 hover:text-gray-200 xs:mx-2">
              Privacy
            </a>
          </Link>
          <Link href="/terms" passHref>
            <a className="mx-0 text-xs text-gray-300 hover:text-gray-200 xs:mx-2">
              Terms of Service
            </a>
          </Link>
        </div>
      </div>
    </div>
  );
}
