User.create({
  email: 'malina@sanctuary.computer',
  password: 'password'
})

User.create({
  email: 'hugh@sanctuary.computer',
  password: 'password'
})

User.create({
  email: 'sebastian@sanctuary.computer',
  password: 'password'
})

Link.create({
  title: 'Kinto',
  description: 'A lightweight JSON storage service with synchronisation and sharing abilities.',
  url: 'http://kinto.readthedocs.org/en/latest/',
  image_url: 'http://kinto.readthedocs.org/en/latest/_images/logo.svg',
  sender: 'malina@sanctuary.computer'
})


Link.create({
  title: 'How I fixed Atom',
  description: 'When good regexes go bad',
  url: 'http://davidvgalbraith.com/how-i-fixed-atom/',
  image_url: 'http://1.gravatar.com/avatar/700886ec68221f3fb1793207c291f519?s=98&d=mm&r=g',
  sender: 'sebastian@sanctuary.computer'
})

Link.create({
  title: 'The Man Who Would Tame Cancer',
  description: 'Patrick Soon-Shiong is opening a new front in the war on the deadly disease.',
  url: 'http://nautil.us/issue/32/space/the-man-who-would-tame-cancer',
  image_url: 'http://static.nautil.us/8237_7dd2ae7db7d18ee7c9425e38df1af5e2.png',
  sender: 'hugh@sanctuary.computer'
})
