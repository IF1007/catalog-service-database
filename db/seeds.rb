# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Serie.create([
  { title: 'Lawless Lawyer', 
    launch_date: '12/05/2018', 
    about: 'A former gangster turned lawyer uses both his fists and the loopholes in law to fight against those with absolute power. He is driven by the desire to avenge his mother.', 
    number_of_seasons: 1, 
    episodes_per_season: 16, 
    poster_link: 'https://upload.wikimedia.org/wikipedia/en/2/2f/Lawless_Lawyer-poster.jpg' 
  },
  { title: 'Boys Over Flowers', 
    launch_date: '05/01/2009', 
    about: 'The series is about an average girl who gets tangled up in the lives of an arrogant rich boy and his friends, and is based on the Japanese shōjo manga series Boys Over Flowers (花より男子 Hana Yori Dango) written by Yoko Kamio.', 
    number_of_seasons: 1, 
    episodes_per_season: 25, 
    poster_link: 'https://upload.wikimedia.org/wikipedia/en/6/65/Boys_Over_Flowers_%28TV_series%29_poster.jpg' 
  },
  { title: 'Age of Youth', 
    launch_date: '22/07/2016', 
    about: 'A slice-of-life story about five college students who connect over the growing pains in their youth.', 
    number_of_seasons: 2, 
    episodes_per_season: 12, 
    poster_link: 'https://upload.wikimedia.org/wikipedia/en/0/07/Age_of_Youth-JTBC.jpg' 
  },
  { title: 'The K2', 
    launch_date: '23/09/2016', 
    about: 'Kim Je-ha is a former mercenary soldier for the PMC Blackstone. While in Iraq, he gets framed for the murder of his lover Raniya, a civilian. As a result, he runs away and becomes a fugitive.', 
    number_of_seasons: 1, 
    episodes_per_season: 16, 
    poster_link: 'https://upload.wikimedia.org/wikipedia/en/a/a2/The_K2_%28%EB%8D%94_%EC%BC%80%EC%9D%B4%ED%88%AC%29.jpg' 
  },
  { title: 'Answer Me 1997', 
    launch_date: '24/07/2012', 
    about: 'Set in the 1990s, "Reply 1997" follows female high high school student Shi-Won, who idolizes boyband H.O.T and her 5 high school friends. As a teen, Shi Won was obsessed with a boy band. Now 33 years old, Shi Won and her friends are reviving their memories as their school reunion nears', 
    number_of_seasons: 1, 
    episodes_per_season: 16, 
    poster_link: 'https://upload.wikimedia.org/wikipedia/en/a/a2/The_K2_%28%EB%8D%94_%EC%BC%80%EC%9D%B4%ED%88%AC%29.jpg' 
  },
  { title: 'Moon Lovers: Scarlet Heart Ryeo', 
    launch_date: '29/08/2016', 
    about: 'Moon Lovers: Scarlet Heart Ryeo is a South Korean television series based on the Chinese novel Bu Bu Jing Xin by Tong Hua.', 
    number_of_seasons: 1, 
    episodes_per_season: 20, 
    poster_link: 'https://upload.wikimedia.org/wikipedia/en/0/0f/Scarletheartryeoposter.jpg' 
  },
  { title: 'Mad Dog', 
    launch_date: '11/10/2017', 
    about: "Choi Kang-woo, a former police and leader of Taeyang Insurance's investigators team, decides to create his own investigation team, after an airplane crash that took the life of his wife and son. He then meet Kim Min-joon, a genius former swindler whose brother was also a victim of the crash, thus begin their rivalry and cooperation.", 
    number_of_seasons: 1, 
    episodes_per_season: 16, 
    poster_link: 'https://upload.wikimedia.org/wikipedia/en/4/47/Mad_Dog_Poster.jpg' 
  },
  { title: 'Stranger', 
    launch_date: '10/06/2017', 
    about: 'The story revolves around a coolheaded and physically emotionless prosecutor, who ends up teaming with a passionate and warm-hearted female detective to uncover rampant corruption and the truth behind a serial murder case.', 
    number_of_seasons: 1, 
    episodes_per_season: 16, 
    poster_link: 'https://upload.wikimedia.org/wikipedia/en/d/d8/Stranger_Poster.jpg' 
  }
])