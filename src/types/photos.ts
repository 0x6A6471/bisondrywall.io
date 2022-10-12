export type Image = {
  height: number;
  width: number;
  source: string;
};

export type Data = {
  id: number;
  alt_text: string;
  link: string;
  images: Image[];
};
