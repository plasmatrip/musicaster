import 'package:hive/hive.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/models/news.dart';

class NewsData {
  static Future<void> addData() async {
    Hive.box<News>(Boxes.news).addAll(
      [
        News(
          image: 'assets/images/news/ni1.png',
          title: 'Online gaming platform Roblox has worked with The Rolling Stones',
          tag: '#TheRollingStones',
          time: 'Yesterday, 11:34 ',
          content: [
            '[IMAGE]assets/images/news/n1.png',
            '[TAG]',
            '[TITLE]',
            '[TEXT]Users will be able to play an interactive runner game to the hits of the band, compete for prizes and receive virtual goods from The Rolling Stones, PR Newswire reports. The online universe was created by Super social.',
            '[TEXT]"Bringing our music to the virtual world of Beat Galaxy is an innovative way to connect with our new and existing fans," the artists themselves shared.',
            '[TEXT]Roblox has previously collaborated with such stars as Lil Nash X, Elton John and Nicki Minaj. In March last year, the K-pop team TWICE presented its world on the platform.',
          ],
        ),
        News(
          image: 'assets/images/news/ni2.png',
          title: 'Peso Pluma admitted that he learned English from songs by Drake, Ye and Kendrick Lamar',
          tag: '#Drake',
          time: 'Yesterday, 10:56 ',
          content: [
            '[IMAGE]assets/images/news/n2.png',
            '[TAG]',
            '[TITLE]',
            '[TEXT]Peso Pluma says he learned how to speak English with the help of some of the biggest names in hip-hop.',
            '[TEXT]The Mexican rapper, 25, made an appearance on Complex\'s 360 with Speedy while promoting his latest album, ÉXODO, which arrived last Thursday and features collaborations with Cardi B, Quavo, Rich the Kid, Anitta, Ryan Castro, and more.',
            '[TEXT]According to MySanAntonio, Pluma, born Hassan Emilio Kabande Laija, was born in Jalisco, Mexico in 1999 and mostly raised in Guadalajara. He moved with his family to San Antonio, Texas and learned English while living in the U.S. for junior high and high school.',
            '[TEXT]However, the Grammy winner says his best English teachers were Kanye West, Kendrick Lamar, and Drake.',
            '[TEXT]“When I was in the U.S., I wasn\'t able to have a real conversation with someone, you know?” Pluma told Speedy Morman at the 9:35 mark in the video up top. “I had this goal to learn English and I didn\'t know how to do it. Music was very special for me to learn English, because that\'s the way that I learned.”',
            '[TEXT]“I didn\'t learn through any books, through any lessons, [or] any teacher. I learned through music. And that specific slang that is used in hip-hop and rap…those are words that you don\'t learn in any book.”',
            '[TEXT]Elsewhere in the interview, Pluma also talked about meeting Travis Scott, 33—whom he calls “one of his biggest inspirations”—for the first time in Miami last year.',
            '[TEXT]“That was the only time that I got to say hi to him. It was in Miami and I mean, he\'s one of my biggest inspirations, and just having a talk with him,” Pluma said. ',
            '[TEXT]“I try to learn things [from] whoever I talked to and especially those kinds of artists that are worldwide. I just try to learn new things from them when they speak and when they talk to me. I\'m really glad that he likes my music as well, as I like his music for sure.”',
            '[TEXT]When asked if a collaboration could happen, Pluma merely said “maybe” with a smile. Musically speaking, he hasn\'t determined what direction a La Flame link-up would go. Whether he jumps on a more American hip-hop vibe or gets Scott to rap over a corrido tumbado, Pluma says he wants to feel out the vibes first.',
            '[TEXT]“That\'s the way that I\'ve been working all my career,” he said. “I just don\'t force things. I just don\'t like to go direct to the collaboration. I just wanna feel people. I just wanna vibe with people, and try to have that chemistry first.”',
          ],
        ),
        News(
          image: 'assets/images/news/ni3.png',
          title: 'Bloc Party presented the single Flirting Again',
          tag: '#BlocParty',
          time: 'June 19, 07:18 ',
          content: [
            '[IMAGE]assets/images/news/n3.png',
            '[TAG]',
            '[TITLE]',
            '[TEXT]Bloc Party have ramped up anticipation for their upcoming gig at London\'s Crystal Palace Park on 7th July with the release of a brand new single, \'Flirting Again\'.',
            '[TEXT]“[It\'s] about being thrust back into the [dating] scene and trying to remember how it all works,” the band\'s Kele Okereke has explained. “It\'s about trying to appear desirable, whilst at the same time hiding the hurt that defines you. We are all carrying around the various scars that we have accumulated over the years, the heartbreaks that have come to shape how we give love and receive love. This song is about picking yourself up and carrying on.”',
            '[TEXT]\'Flirting Again\' will likely get its live debut when Bloc Party take to one of Glastonbury Festival\'s many stages this weekend, after which the band will be looking forward to their now sold-out Crystal Palace Park show, where they\'ve confirmed they\'ll be playing their seminal debut album \'Silent Alarm\' in full. Plus, with support from the likes of The Hives, Friendly Fires, and The Mysterines, and with 25,000 people set to attend, it\'ll be their biggest headline performance ever.',
          ],
        ),
        News(
          image: 'assets/images/news/ni4.png',
          title: 'A romcom based on the relationship between Taylor Swift and Travis Kelsey will be filmed',
          tag: '#TaylorSwift',
          time: 'June 18, 06:36 ',
          content: [
            '[IMAGE]assets/images/news/n4.png',
            '[TAG]',
            '[TITLE]',
            '[TEXT]A romcom inspired by Taylor Swift and Travis Kelce\'s relationship is reportedly underway.',
            '[TEXT]The singer and Kansas City Chiefs player appear to have been together since last year, with their relationship drawing massive media attention. Swift attended multiple NFL games last season, and Kelce has been supporting her on her record-breaking \'Eras\' tour.',
            '[TEXT]Now, the NFL has teamed up with Hallmark to create a Christmas romance film inspired by the Kansas City Chiefs, called Holiday Touchdown: A Chiefs Love Story.',
            '[TEXT]According to Entertainment Weekly, production is to begin next month in Kansas City, Missouri, with some filming set to take place at the Arrowhead Stadium, home of the Chiefs and venue for Swift\'s Missouri slot on July 7 – 8 2023.',
            '[TEXT]The official synopsis for the movie reads: “Alana (King) is sure that her family\'s lifelong history as Kansas City Chiefs superfans makes them a frontrunner to win the team\'s Fan of the Year contest.',
            '[TEXT]“Derrick (Hynes), director of fan engagement, is tasked with evaluating how Alana and her family stack up against the other two finalists. As the pair spends time together, it\'s clear there\'s a spark between them.',
            '[TEXT]When Alana\'s grandfather\'s (Begley) vintage lucky Chiefs hat goes missing, however, she “begins to doubt everything she believed about fate and even questions her future with Derrick” — that is, unless “a little Christmas magic can throw a Hail Mary.”',
            '[TEXT]Hallmark\'s chief brand officer Darren Abbott spoke about the film: “With Hallmark and the Kansas City Chiefs both homegrown, rooted in values, tradition and community, there is a special alchemy between these two iconic organizations,” perhaps referring to Swift\'s song \'The Alchemy\', which many fans believe is about Kelce.',
            '[TEXT]He continued: “By blending the warmth of Hallmark storytelling with the excitement of professional football, we are thrilled to give audiences a front-row seat to this community\'s spirit, rich traditions, and passionate fans that define Kansas City, all wrapped up in the comforting and uplifting Hallmark way.”',
            '[TEXT]The pair made headlines last weekend after Kelce joined Swift onstage, in character and costume, during her \'The Tortured Poets Department\' set at Wembley Stadium.',
          ],
        ),
        News(
          image: 'assets/images/news/ni5.png',
          title: 'Camilla Cabello told what advice Taylor Swift gave her at the first meeting',
          tag: '#TaylorSwift',
          time: 'June 18, 01:21 ',
          content: [
            '[IMAGE]assets/images/news/n5.png',
            '[TAG]',
            '[TITLE]',
            '[TEXT]Camila Cabello has revealed the piece of advice Taylor Swift shared with her when they met for the first time.',
            '[TEXT]Speaking with 11-year-old influencer Taylen Biggs for an interview, Cabello reflected on meeting Swift for the first time around a decade ago at the MTV VMAs when she was still with Fifth Harmony.',
            '[TEXT]According to Cabello, their first interaction was one that meant a lot to her, with Swift imparting some knowledge about songwriting to the then 17-year-old. “I was maybe about 16 or 17 where I met one of my songwriting heroes, Taylor Swift. I see her and Lorde sitting together. I\'m like, \'Oh my god, that\'s Taylor Swift. I have to go up to both of them, and I have to tell them I love them.\' They were both so sweet.”',
            '[TEXT]Cabello went on to add that she was having a tough time with songwriting at the time: “I was having a hard time getting out of this creative rut. I was like, \'Who is the person to ask about songwriting? It\'s Taylor Swift.\' I was like, \'What would you say if you\'re having a lot of self doubt and you feel a little stuck?\'”',
            '[TEXT]The former Fifth Harmony remember recalled Swift sharing some poignant advice: “I don\'t even know if she remembers this, it was so long ago. She said, \'When that happens to me, [I] just keep writing through it. You just gotta keep going, keep writing through it.\'”',
            '[TEXT]“When you feel those voices of self doubt, just keep going,” Swift reportedly continued. “You will find yourself on the other side of it.”',
            '[TEXT]Cabello has in the past revealed to Billboard that she had been a fan of Swift since she was 13-years-old, and that the two have since formed a friendship. In 2018, Cabello performed as an opener for Swift\'s \'Reputation\' stadium tour. In 2019, the pair performed together at the 2019 American Music Awards.',
            '[TEXT]Swift is currently on the European leg of her massive career-spanning \'Eras\' tour, while Cabello is set to release her fourth solo album \'C, XOXO\' on June 28.',
            '[TEXT]Cabello\'s last album, \'Familia\', came out in 2022, and she has said in the past that the record “saved my life”.',
            '[TEXT]In a four-star review of \'Familia\', NME described the album as “pin-sharp satire and \'emo\' anguish galore”, adding: “The Havana-born, Miami-raised singer wows with songs that explore anxiety, seething sexual jealousy and the loneliness of a long-distance relationship.”',
          ],
        ),
      ],
    );
  }
}
