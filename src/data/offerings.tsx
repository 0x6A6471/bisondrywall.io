import {
  Buildings,
  Disc,
  Fire,
  HouseLine,
  PaintBrushHousehold,
  Wall,
} from 'phosphor-react';

const offerings = [
  {
    id: 1,
    title: 'Drywall installation',
    items: [
      {
        id: 1.1,
        icon: <HouseLine color="#D7B732" size={30} />,
        label: 'Residential',
        description:
          'Home extensions, wall additions, or simple patches, we work quickly to accomodate any of your drywall needs.',
      },
      {
        id: 1.2,
        icon: <Buildings color="#D7B732" size={30} />,
        label: 'Commerical',
        description:
          'Looking for upgrades to the office? We help proffessional businesses with additions and upgrade their suites.',
      },
    ],
  },
  {
    id: 2,
    title: 'Drywall & plaster repair',
    items: [
      {
        id: 2.1,
        icon: <Disc color="#D7B732" size={30} />,
        label: 'Drywall cracks & holes',
        description:
          'Our team fixes damaged drywall caused by moisture, poor installation, or even the settling of the structure.',
      },
      {
        id: 2.2,
        icon: <Fire color="#D7B732" size={30} />,
        label: 'Fire, smoke & water damage',
        description:
          'Recent fire or pipe burst? We remove the lingering smell of smoke or mildew.',
      },
    ],
  },
  {
    id: 3,
    title: 'Drywall finishing',
    items: [
      {
        id: 3.1,
        icon: <PaintBrushHousehold color="#D7B732" size={30} />,
        label: 'Plaster finishing',
        description:
          'Unfinished drywall doesn’t look the best. Let our professionals help get your drywall ready for paint or paper.',
      },
      {
        id: 3.2,
        icon: <Wall color="#D7B732" size={30} />,
        label: 'Texture drywall',
        description:
          'Our team can help with any kind of texture you are looking for—skip trowel, orange peel, sand, knockdown, and smooth!',
      },
    ],
  },
];

export default offerings;
