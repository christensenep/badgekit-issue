INSERT INTO `systems` SET
  `id` = 1,
  `imageId` = 1,
  `slug` = 'chicago',
  `name` = 'Chicago',
  `url` = 'http://cityofchicago.org',
  `description` = 'The City of Chicago',
  `email` = 'mayor-emanuel@cityofchicago.org';

INSERT INTO `systems` SET
  `id` = 2,
  `imageId` = 1,
  `slug` = 'pittsburgh',
  `name` = 'Pittsburgh',
  `url` = 'http://pittsburghpa.gov',
  `description` = 'The City of Pittsburgh',
  `email` = 'mayor-ravenstahl@pittsburghpa.gov';

INSERT INTO `webhooks` SET
  `id` = 1,
  `systemId` = 1,
  `url` = 'http://example.org/',
  `secret` = 'n+MMi/xDLqB8qu94om10newruRh+4R+z28s4h6xnQrx9XUnjia7V7JJNstdknwbq';

INSERT INTO `consumers` SET
  `id` = 1,
  `apiKey` = 'radical',
  `apiSecret` = 'At9p1PVNW5jQAV8LnvfGdpbnuAcxq765pBNNhV9Kjnvgyn4S7YEs7KgVla1OGyny',
  `systemId` = 1;

INSERT INTO `issuers` SET
  `id` = 1,
  `systemId` = 1,
  `imageId` = 1,
  `slug` = 'chicago-library',
  `name` = 'Chicago Public Library',
  `url` = 'http://www.chipublib.org/',
  `description` = 'Chicago Public Library',
  `email` = 'eratosthenes@chipublib.org';

INSERT INTO `issuers` SET
  `id` = 2,
  `systemId` = 2,
  `slug` = 'carnegie-library',
  `name` = 'Carnegie Library of Pittsburgh',
  `url` = 'http://carnegielibrary.org',
  `description` = 'Carnegie Library of Pittsburgh',
  `email` = 'jack-gilbert@carnegielibrary.org';

INSERT INTO `programs` SET
  `id` = 1,
  `issuerId` = 1,
  `imageId` = 1,
  `slug` = 'mit-scratch',
  `name` = 'MIT Scratch',
  `url` = 'http://scratch.mit.edu/',
  `description` = 'Create stories, games, and animations. Share with others around the world',
  `email` = 'admin@scratch.mit.edu';

INSERT INTO `programs` SET
  `id` = 2,
  `imageId` = 1,
  `slug` = 'khan-academy',
  `name` = 'Khan Academy',
  `url` = 'https://www.khanacademy.org/',
  `description` = 'Start learning now',
  `email` = 'admin@khanacademy.org';

INSERT INTO `badges` SET
  `id` = 1,
  `systemId` = 1,
  `imageId` = 1,
  `slug` = 'chicago-badge',
  `name` = 'Chicago Badge',
  `description` = 'A longer description of the badge',
  `strapline` = 'A badge for Chicago';

INSERT INTO `badges` SET
  `id` = 2,
  `systemId` = 2,
  `slug` = 'pittsburgh-badge',
  `name` = 'Pittsburgh Badge',
  `strapline` = 'A badge for Pittsburgh';

INSERT INTO `badges` SET
  `id` = 3,
  `systemId` = 1,
  `slug` = 'archived-badge',
  `name` = 'Archived Badge',
  `strapline` = 'An archived badge',
  `archived` = 1;

INSERT INTO `badges` SET
  `id` = 4,
  `systemId` = 1,
  `issuerId` = 1,
  `programId` = 1,
  `slug` = 'chicago-scratch-badge',
  `name` = 'Chicago Scratch Badge',
  `description` = 'A longer description of the badge',
  `strapline` = 'A badge for doing Scratch in Chicago';

INSERT INTO `badges` SET
  `id` = 5,
  `systemId` = 1,
  `issuerId` = 1,
  `slug` = 'chicago-library-badge',
  `name` = 'Chicago Library Badge',
  `description` = 'A longer description of the badge',
  `strapline` = 'A badge for doing Library in Chicago';

INSERT INTO `images` SET
  `id` = 1,
  `slug` = 'some-image',
  `url` = 'http://example.org/test.png';
