const util = require('util')
const db = require('../lib/db');
const makeValidator = require('../lib/make-validator')

const Badges = db.table('badges', {
  fields: [
    'id',
    'slug',
    'name',
    'strapline',
    'description',
    'archived',
    'imageId',
    'systemId',
    'issuerId',
    'programId',
  ],
  relationships: {
    image: {
      type: 'hasOne',
      local: 'imageId',
      foreign: { table: 'images', key: 'id' },
      optional: true
    },
    system: {
      type: 'hasOne',
      local: 'systemId',
      foreign: { table: 'systems', key: 'id' },
      optional: true,
    },
    issuer: {
      type: 'hasOne',
      local: 'issuerId',
      foreign: { table: 'issuers', key: 'id' },
      optional: true,
    },
    program: {
      type: 'hasOne',
      local: 'programId',
      foreign: { table: 'programs', key: 'id' },
      optional: true,
    },
  }
});


Badges.makeBadgeClass = function makeBadgeClass(badge) {
  // #TODO: alignment url, criteria, tags
  return {
    name: badge.name,
    description: badge.description,
    image: badge.image.toUrl(),
    criteria: badge.criteria,
    issuer: publicIssuerUrl(badge),
  }
}

function publicIssuerUrl(badge) {
  const system = badge.system
  const issuer = badge.issuer
  const program = badge.program
  if (program && program.slug)
    return util.format('/public/systems/%s/issuers/%s/programs/%s',
                      system.slug, issuer.slug, program.slug)
  if (issuer && issuer.slug)
    return util.format('/public/systems/%s/issuers',
                      system.slug, issuer.slug)
  if (badge.system && badge.system.slug)
    return util.format('/public/systems/%s', system.slug)
}

Badges.validateRow = makeValidator({
  id: optionalInt,
  slug: function (slug) {
    this.check(slug).len(1, 50);
  },
  name: function (name) {
    this.check(name).len(1, 255);
  },
  strapline: function (text) {
    this.check(text).len(0, 50);
  },
  description: function (desc) {
    this.check(desc).len(1, 255);
  },
  imageId: optionalInt,
  programId: optionalInt,
  issuerId: optionalInt,
  systemId: optionalInt,
});

function optionalInt(id) {
  if (typeof id == 'undefined' || id === null) return;
  this.check(id).isInt();
}

function value(name) {
  return function (obj) {
    return obj[name]
  }
}

exports = module.exports = Badges;
