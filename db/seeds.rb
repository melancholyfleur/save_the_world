# Climate Change
climate_change1 = PassionResource.create(name: 'Climate Change',
                                         url: 'http://worrydream.com/ClimateChange/'
                                        )
climate_change2 = PassionResource.create(name: 'NASA',
                                         url: 'http://climate.nasa.gov/evidence/'
                                        )
climate_change = Passion.create(name: 'Climate Change', 
                                summary: 'A rise in the overall temperature of the globe and subsequent climate extremes.',
                               )
climate_change.passion_resources << climate_change1
climate_change.passion_resources << climate_change2

# Colony Collapse Disorder
bees1 = PassionResource.create(name: 'Colony Collapse Disorder',
                               url: 'https://en.wikipedia.org/wiki/Colony_collapse_disorder'
                              )
bees2 = PassionResource.create(name: 'Pollinator Decline',
                               url: 'https://en.wikipedia.org/wiki/Pollinator_decline'
                              )
bees3 = PassionResource.create(name: 'Saving the World using Ruby on Rails',
                               url: 'https://www.youtube.com/watch?v=J8i3mKJyjbQ'
                              )
bees_project1 = Project.create(name: 'The Honey Bee Initiative',
                               url: 'http://bees.gmu.edu/',
                               summary: 'George Mason University studies local hives to study the decline of bees in Virginia.'
                              )
ccd = Passion.create(name: 'Colony Collapse Disorder', 
                     summary: 'The majority of worker bees in a colony disappear inexplicably.'
                    )
ccd.passion_resources << bees1
ccd.passion_resources << bees2
ccd.passion_resources << bees3
ccd.projects << bees_project1

# Under-representation in Tech
diversity1 = PassionResource.create(name: 'Geek Feminism Wiki',
                               url: 'http://geekfeminism.wikia.com/wiki/Geek_Feminism_Wiki'
                              )
diversity2 = PassionResource.create(name: 'Unlocking the Clubhouse: Women in Computing',
                               url: 'http://amazon.com/dp/0262632691'
                              )
diversity_project1 = Project.create(name: 'Girl Develop It',
                                    url: 'http://girldevelopit.com',
                                    summary: 'Girl Develop It is a nonprofit organization that exists to provide affordable and judgment-free opportunities for women interested in learning web and software development.'
                                   )
diversity_in_tech = Passion.create(name: 'Diversity in Tech', 
                                   summary: 'The lack of representation of certain demographics in technology-related fields.'
                                  )
diversity_in_tech.passion_resources << diversity1
diversity_in_tech.passion_resources << diversity2
diversity_in_tech.projects << diversity_project1
