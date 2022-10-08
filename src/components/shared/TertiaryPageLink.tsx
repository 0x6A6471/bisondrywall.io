import Link from 'next/link';

type Props = {
  href: string;
  label: string;
};

export default function TertiaryPageLink({ href, label }: Props) {
  return (
    <Link href={href} passHref>
      <a className="text-yellow-base underline hover:opacity-80">{label}</a>
    </Link>
  );
}
