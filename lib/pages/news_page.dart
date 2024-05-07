import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wealthify_app/bottom_bar.dart';
import 'package:wealthify_app/model/news_item.dart';
import 'package:wealthify_app/pages/description_news_page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> newsList = [
    NewsItem(
      title: 'Record Inflation Hits New High, Eroding Purchasing Power',
      text:
          'Inflation in the country has hit a new record high, eroding consumers\' purchasing power and raising concerns about economic growth. The consumer price index (CPI), which measures the change in prices for goods and services, rose by percentage points in month compared to percentage points in the previous month. This is the highest level of inflation since year. The increase in prices has been driven by a number of factors, including supply chain disruptions caused by the COVID-19 pandemic, the war in Ukraine, and rising demand as the economy recovers. Food, energy, and housing prices have all risen sharply, putting a significant strain on household budgets. Record inflation is eroding consumers\' purchasing power, as their money can now buy fewer goods and services. This could lead to a decrease in consumer spending and a slowdown in economic growth. The central bank has expressed concern about high inflation and is taking steps to curb it. It is expected to raise interest rates in the coming months, which could slow economic growth but also bring inflation down. The government is also taking measures to combat inflation, including providing subsidies on food and energy. However, experts are skeptical about the effectiveness of these measures, as they could lead to increased government debt and further inflation in the future. Record inflation is a serious problem for the country, and could have long-term consequences for the economy and the well-being of its citizens. The central bank and the government need to take decisive action to bring inflation under control without damaging economic growth.',
      image:
          'https://www.gov.ls/wp-content/uploads/2022/04/gorgi-krlev-reconceptualizing-social-econ-737x737-1.jpg',
    ),
    NewsItem(
      title:
          'Central Bank Raises Interest Rates to Curb Inflation, but Economic Growth May Slow',
      text:
          'The central bank has raised interest rates by percentage points in an effort to curb record-high inflation. This is the first interest rate hike in number years. The rate hike is expected to slow economic growth, as it will make borrowing more expensive for businesses and consumers. Higher interest rates can also lead to a decrease in investment and consumer spending. The central bank is raising interest rates to reduce inflationary pressures. Inflation is the rate at which the general level of prices for goods and services is rising in an economy. High inflation can be damaging to an economy, as it erodes consumers\' purchasing power and leads to a decrease in investment and economic growth. However, raising interest rates can also have negative consequences for the economy. Higher interest rates can slow economic growth and lead to job losses. They can also make it more difficult for businesses to access capital to expand and create new jobs. The central bank\'s decision to raise interest rates was a difficult one, as it had to balance the need to curb inflation with the risk of slowing economic growth. The central bank has said that it will continue to monitor the situation closely and adjust its policy as necessary. The interest rate hike is likely to have a significant impact on the economy. It is important that the central bank proceeds cautiously and avoids raising interest rates too quickly or too sharply. Otherwise, it could lead to a sharp slowdown in economic growth or even a recession.',
      image:
          'https://gmk.center/wp-content/uploads/2023/09/shutterstock_2154195865-1.png',
    ),
    NewsItem(
      title: 'Stock Markets Fall on Inflation, Rate Hike Fears',
      text:
          'Stock markets around the world have fallen sharply amid concerns over high inflation and rising interest rates. The S&P 500 index has dropped by percentage points, while the Dow Jones Industrial Average has fallen by percentage points. The stock market sell-off has been driven by a number of factors, including record-high inflation and the prospect of interest rate hikes by central banks. Investors are worried that high inflation and rising interest rates could lead to a slowdown in economic growth or even a recession. Interest rate hikes by central banks make borrowing more expensive for businesses and consumers. This can lead to a decrease in investment and consumer spending, which in turn can slow economic growth. The stock market sell-off is a serious concern, as it could have long-term consequences for the economy. Stock markets are an important source of funding for businesses, and a prolonged downturn could make it difficult for businesses to raise capital to grow and create jobs. Central banks and governments need to take steps to restore investor confidence and stabilize the stock market. They can do this by bringing inflation under control and avoiding sharp increases in interest rates.',
      image:
          'https://humanprogress.org/wp-content/uploads/2020/08/growth-op-ed-thumbnail.jpg',
    ),
    NewsItem(
      title:
          'Government Unveils Inflation-Fighting Measures, but Experts Question Effectiveness',
      text:
          'The government has announced a new set of measures to combat record-high inflation, but experts have expressed doubts about their effectiveness. The new measures include providing subsidies on food and energy, and increasing the minimum wage. The government claims that these measures will help to reduce the cost of living for households and businesses. However, experts argue that the measures may not be sufficient to tame inflation and could lead to further problems down the road. Subsidies on food and energy can help to reduce the short-term cost of living for households. However, they can be expensive for the government and could lead to an increase in the national debt. Additionally, subsidies can lead to inefficient allocation of resources and reduce incentives for production. Increasing the minimum wage can help to boost the incomes of low-wage workers. However, it can also lead to increased costs for businesses, which could result in higher prices and reduced employment. Experts argue that the most effective way to combat inflation is to address the underlying causes of inflation, such as supply chain disruptions, the war in Ukraine, and increased demand. They are calling on the central bank to raise interest rates and the government to reduce spending and investment. Overall, the government\'s announced inflation-fighting measures are controversial and their effectiveness is uncertain. Experts are urging the government to proceed with caution and to focus on addressing the root causes of inflation.',
      image:
          'https://equitablegrowth.org/wp-content/uploads/2019/10/GDP-2.0-measuring-growth-1080x675.jpg',
    ),
    NewsItem(
      title: 'Crypto Market Suffers Sharp Selloff as Investors Lose Confidence',
      text:
          'The cryptocurrency market is experiencing a sharp selloff as investors lose confidence in digital assets. Bitcoin, the largest cryptocurrency by market capitalization, has fallen below price dollars, its lowest level since date. Other cryptocurrencies, such as Ethereum and Binance Coin, have also seen their prices drop sharply. The crypto market\'s decline has been driven by a number of factors, including increased regulatory scrutiny, concerns about the stability of stablecoins, and a broader sell-off in risky assets. Investors are also growing increasingly concerned about the rising number of scams and hacks in the crypto industry. Regulatory crackdowns by governments around the world have created uncertainty and fear among investors. Concerns about the stability of stablecoins, such as TerraUSD, have also shaken confidence in cryptocurrencies as a whole. In addition, a broader sell-off in risky assets, driven by fears of inflation and rising interest rates, has also weighed on the crypto market. Investors are pulling money out of risky assets, such as cryptocurrencies, and moving into safer assets, such as bonds and gold. The crypto market\'s decline is a major setback for the industry. Cryptocurrencies have been touted as a hedge against inflation and traditional financial markets, but the recent selloff calls that assumption into question. Investors should exercise caution when investing in cryptocurrencies and be prepared for further losses. The crypto market is unregulated and volatile, and investors could lose their entire investment.',
      image:
          'https://media.istockphoto.com/id/1474513420/vector/economic-cycle-to-study-up-and-down-on-stock-market-booming-or-recession-business-cycle-for.jpg?s=612x612&w=0&k=20&c=R9sJGb8hZW7RJGr6Ic42UxHtA2MQNkjS9btYI0YAa4I=',
    ),
    NewsItem(
      title: 'Stock Market Falls on Recession Fears',
      text:
          'Stock markets around the world have fallen sharply amid growing fears of a possible recession. The S&P 500 index has dropped by percentage points, while the Dow Jones Industrial Average has fallen by percentage points. The stock market sell-off has been driven by a number of factors, including weak economic data, geopolitical tensions, and concerns about rising interest rates. Investors are worried that interest rate hikes by central banks to combat inflation could lead to a slowdown in economic growth or even a recession. Weak economic data has also weighed on the stock market. Recent data has shown that economic growth is slowing and that consumer spending is declining. This has raised concerns that the economy may be heading for a recession. Geopolitical tensions are also having a negative impact on the stock market. The war in Ukraine and tensions between the US and China are creating uncertainty and fear among investors. The stock market sell-off is a serious concern, as it could have negative consequences for the economy. The stock market is an important source of funding for businesses, and a prolonged downturn could make it difficult for businesses to raise capital to grow and create jobs. It is unclear when the stock market will bottom out. However, investors should be prepared for further volatility and potential losses.',
      image:
          'https://www.edology.com/uploads/media/sulu-700x450/06/2166-blog-accounting-finance_how-does-the-global-economy-work-s.png?v=1-0',
    ),
    NewsItem(
      title: 'Immigrant workers are helping boost the U.S. labor market',
      text:
          'The strong jobs market has been bolstered post-pandemic by strength in the immigrant workforce in America. And as Americans age out of the labor force and birth rates remain low, economists and the Federal Reserve are touting the importance of immigrant workers for overall future economic growth. Immigrant workers made up 18.6% of the workforce last year, a new record, according to Bureau of Labor Statistics data. Workers are taking open positions in agriculture, technology and health care, fields where labor supply has been a challenge for those looking to hire. Despite the U.S. adding fewer-than-expected jobs in April, the labor force participation rate for foreign-born workers ticked up slightly, to 66%. “We don’t have enough workers participating in the labor force and our birth rate has dropped down 2% last year from 2022 to 2023. ... These folks are not taking jobs. They are helping to bolster and helping us build back — they’re adding needed workers to the labor force,” said Jennie Murray, CEO of the National Immigration Forum, a nonpartisan nonprofit advocacy organization.  The influx of immigrant workers is also a projected boost to U.S. output, and is expected to grow gross domestic product over the next decade by \$7 trillion, Congressional Budget Office Director Phillip Swagel noted in a February statement accompanying the 2024-2034 CBO outlook. “The labor force in 2033 is larger by 5.2 million people, mostly because of higher net immigration. As a result of those changes in the labor force, we estimate that, from 2023 to 2034, GDP will be greater by about \$7 trillion and revenues will be greater by about \$1 trillion than they would have been otherwise. We are continuing to assess the implications of immigration for revenues and spending,” Swagel wrote.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107200490-1677531097970-gettyimages-1470045732-dscf1239_f06ee50c-bab1-42f9-93d2-6bc79d391a4a.jpeg?v=1677531158&w=1260&h=630&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Jobless rates rise in April for all racial groups except Black Americans',
      text:
          'The unemployment rate for Black Americans fell in April, bucking the overall trend, according to data released Friday by the Department of Labor. Black Americans remain the racial group with the highest jobless percentage in the U.S., even after the group’s unemployment rate dipped to 5.6% last month from 6.4% in March. Still, that’s notable compared with the overall unemployment rate — which rose to 3.9% in April from 3.8% — and to the other racial demographics, which all saw their unemployment rates increase last month. White Americans saw their unemployment rate edge fractionally higher to 3.5% from 3.4%. The jobless rate for Asian and Hispanic workers, respectively, rose to 2.8% from 2.5%, and to 4.8% from 4.5%.But the unemployment rate for Black Americans has been noticeably volatile, rising to 6.4% in March from 5.6% in February. “Luckily, for many reasons, that came down. I think that speaks to last month really just being a statistical blip that happens because of small sample sizes, and having that come down now for April is very promising,” said Elise Gould, senior economist at the Economic Policy Institute. “And you’re seeing that happen for Black men and Black women alike.” Gould added that she’s still keeping a close eye on the unemployment rate for Black Americans, which rose four months in a row prior to April. It’s a key indicator — or the canary in the coal mine — to watch, since historically marginalized groups often feel the effects of a soft labor market first, she said.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107354785-1704466438172-gettyimages-1726633263-64393_09_ms_1833.jpeg?v=1714751119&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'U.S. job growth totaled 175,000 in April, much less than expected, while unemployment rose to 3.9%',
      text:
          'The U.S. economy added fewer jobs than expected in April while the unemployment rate rose, lifting hopes that the Federal Reserve will be able to cut interest rates in the coming months. Nonfarm payrolls increased by 175,000 on the month, below the 240,000 estimate from the Dow Jones consensus, the Labor Department’s Bureau of Labor Statistics reported Friday. The unemployment rate ticked higher to 3.9% against expectations it would hold steady at 3.8%. Average hourly earnings rose 0.2% from the previous month and 3.9% from a year ago, both below consensus estimates and an encouraging sign for inflation. The jobless rate tied for the highest level since January 2022. A more encompassing rate that includes discouraged workers and those holding part-time jobs for economic reasons also edged up, to 7.4%, its highest level since November 2021. The labor force participation rate, or those actively looking for work, was unchanged at 62.7%. Wall Street already had been poised for a higher open, and futures tied to major stock market averages added to gains following the report. Treasury yields tumbled after being little changed before the release. The report raised the prospect of a “Goldilocks” climate where growth continues but not at such a rapid pace to force the Fed to tighten policy further. “With this report, the porridge was just about right,” said Dan North, senior economist at Allianz Trade. “What would you like at this point the cycle? We’ve had interest rates jacked up pretty high, so you would expect to see the labor market slow down a little. But we’re still at pretty high levels.”',
      image:
          'https://image.cnbcfm.com/api/v1/image/107400375-1712923677465-gettyimages-2147729385-INITIAL_JOBLESS_CLAIMS.jpeg?v=1712923758&w=600&h=300&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title: 'Turkey’s inflation accelerates to nearly 70% in April',
      text:
          'Turkey’s inflation accelerated to 69.8% annually for the month of April, the Turkish Statistical Institute reported Friday. The highest consumer price increases year on year were in education, with a 103.86% jump, and hotels, cafes and restaurants, with an increase of 95.82%. On a monthly basis, Turkey’s inflation climbed 3.18%, led by price rises in alcoholic beverages and tobacco, and hotels, cafes and restaurants. April’s inflation rate marks the highest annual increase since November 2022, when inflation was around 85%. While an eye-watering figure, April’s nearly 70% CPI read was actually a smaller jump than many analysts had expected. But any hopes of interest rate cuts are a long way off, economists said. Turkey’s central bank has hiked its key interest rate to 50%, citing the continuing need to counter climbing inflation in the country. The bank said in March that “tight monetary stance will be maintained until a significant and sustained decline in the underlying trend of monthly inflation is observed.” “The slightly smaller-than-expected rise in Turkish inflation in April to 69.8% y/y (consensus 70.3%) offers encouraging signs that price pressures have softened again,” Liam Peach, senior emerging markets economist at London-based Capital Economics, wrote in a note Friday. “We think that inflation will fall in the second half of this year, but we are not quite as optimistic on the pace of disinflation. ... Against this backdrop, we still don’t expect the central bank to shift to cuts until next year.”',
      image:
          'https://image.cnbcfm.com/api/v1/image/107239665-1683809695399-gettyimages-1242813351-TURKEY_LEVENT.jpeg?v=1714723578&w=600&h=300&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title: 'Here’s what to expect from the April jobs report on Friday',
      text:
          'Hiring likely continued at a brisk pace in April as investors look for any cracks in the labor market that could sway the Federal Reserve. Nonfarm payrolls are expected to show a gain of 240,000 for the month, according to the Dow Jones consensus that also sees the unemployment rate holding steady at 3.8%. If that top-line number is accurate, it actually would reflect a small step back from the average 276,000 jobs a month created so far in 2024. In addition, such growth could add to the Fed’s reluctance to lower interest rates, with the labor market humming along and inflation still above the central bank’s 2% target. “There are definitely still tailwinds left,” said Amy Glaser, senior vice president of business operations at job staffing site Adecco. “For April, the name of the game is steady-Eddie as resiliency continues, and then we’re looking forward to some of the seasonal trends we would expect going into the summer.” April’s jobs market featured more strength in health care and leisure and hospitality, Glaser added. Those have been two of the major sectors for employment growth this year, with health care adding about 240,000 jobs so far and leisure and hospitality contributing 89,000 jobs. However, growth in the coming months could spread to areas such as education, manufacturing and warehousing, part of the usual seasonal trends as educators look for alternative employment in the summer and students head out seeking jobs, she said. “I don’t expect to see major surprises this month based on what I’m seeing on the ground,” Glaser said. “But we’ve been surprised before.”',
      image:
          'https://image.cnbcfm.com/api/v1/image/107400377-1712923676467-gettyimages-2147729389-INITIAL_JOBLESS_CLAIMS.jpeg?v=1714682895&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title: 'The Fed Is Eyeing the Job Market, but It’s Difficult to Read',
      text:
          'The Federal Reserve spent much of 2022 and 2023 narrowly focusing on inflation as policymakers set interest rates: Prices were rising way too fast, so they became the central bank’s top priority. But now that inflation has cooled, officials are more clearly factoring the job market into their decisions again. One potential challenge? It’s a very difficult moment to assess exactly what monthly labor market data are telling us. Jerome H. Powell, the Fed chair, said during a news conference on Wednesday that the way the job market shaped up in coming months could help to guide whether and when the central bank lowered interest rates this year. A substantial weakening could prod policymakers to cut, he suggested. If job growth remains rapid and inflation remains stuck, on the other hand, the combination could keep the Fed from lowering interest rates anytime soon. But it is tough to guess which of those scenarios may play out — and it is trickier than usual to determine how hot today’s job market is, especially in real time. Fed officials will get their latest reading on Friday morning, when the Labor Department releases its April employment report.',
      image:
          'https://static01.nyt.com/images/2024/05/02/multimedia/02dc-FedFollow-fchj/02dc-FedFollow-fchj-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title: 'Can a ‘Not Charlotte’ Recipe Revive a Region?',
      text:
          'Scott Kidd didn’t expect a terribly busy job when he became the town manager of Liberty, N.C., a onetime furniture and textile hub whose rhythms more recently centered on a yearly antiques festival. Those quiet times, less than three years ago, soon became a whirlwind. Toyota announced it was building a battery factory on the town’s rural outskirts for electric and hybrid vehicles, and since then Mr. Kidd has reviewed ordinances, met with housing developers and otherwise sought to meet the needs of a seven-million-square-foot facility. The flurry of activity reflects new investments in a region of North Carolina that has lagged behind: the Triad. The average income in Randolph County, which includes Liberty, is \$47,000, and some jobs at Toyota will offer an hourly wage comfortably above that. More people moving into the area could breathe life into Liberty’s downtown. But the potential dividends for the area — which includes Greensboro, Winston-Salem and High Point, in the center of the state — depend on equipping its workers with the skills needed for those new jobs. Mr. Kidd worried that many local workers lacked the education and skills to work at the plant. For those jobs, “they don’t write anything down — they put it in a computer,” Mr. Kidd said. “And if you don’t know how to do that, you kind of get x-ed out.” At the same time, some residents and local leaders who welcome the new industries worry about maintaining the area’s character, lest it become like the rapidly growing — and expensive — sprawls elsewhere in the South.',
      image:
          'https://static01.nyt.com/images/2024/05/01/multimedia/00carolina-econ-01-thbk/00carolina-econ-01-thbk-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title: 'Job Openings and Hiring Are at a 3-Year Ebb',
      text:
          'The red-hot labor market cooled somewhat in March, government data showed on Wednesday. Employers had 8.5 million unfilled job openings on the last day of March, the fewest since early 2021, according to data released by the Labor Department. They also filled the fewest jobs in nearly four years, suggesting that employers’ seemingly insatiable demand for workers might finally be abating. A slowing labor market would be welcome news for policymakers at the Federal Reserve, who are concluding a two-day meeting on Wednesday amid signs that inflation is proving difficult to stamp out. Fed officials have said they see falling job openings as a sign that supply and demand are coming into better balance. For workers, however, that rebalancing could mean a loss of the bargaining power that has brought them strong wage gains in recent years. The number of workers voluntarily quitting their jobs fell to 3.3 million, the lowest level in more than three years and a far cry from the more than four million a month who were leaving their jobs at the peak of the “great resignation” in 2022. “This continued moderation is largely positive for the market and the economy overall, and is mostly sustainable for the time being,” Nick Bunker, economic research director for the Indeed Hiring Lab, wrote in a note on Wednesday. But, he added, “if job openings continue to decline for much longer, hiring of unemployed workers will eventually retreat enough to drive unemployment up.” There is little sign of that so far, however. Despite high-profile job cuts at a few large companies, layoffs remain low overall, and fell in March. And while job openings have fallen, there are still about 1.3 available positions for every unemployed worker. Data released by the Labor Department on Tuesday showed that wage growth picked up in the first three months of the year, suggesting workers retain some leverage. The data released Wednesday came from the Labor Department’s monthly survey of job openings and labor turnover. Economists will get a more timely snapshot of the labor market on Friday, when the government releases its monthly jobs report.',
      image:
          'https://static01.nyt.com/images/2024/05/01/multimedia/01econ-jolts-jmbh/01econ-jolts-jmbh-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'The Fed Tries to Steer Clear of Politics, but an Election Year Is Making It Tough',
      text:
          'Federal Reserve officials are fiercely protective of their separation from politics, but the presidential election is putting the institution on a crash course with partisan wrangling. Fed officials set policy independently of the White House, meaning that while presidents can push for lower interest rates, they cannot force central bankers to cut borrowing costs. Congress oversees the Fed, but it, too, lacks power to directly influence rate decisions. There’s a reason for that separation. Incumbent politicians generally want low interest rates, which help to stoke economic growth by making borrowing cheap. But the Fed uses higher interest rates to keep inflation slow and steady — and if politicians forced to keep rates low and goose the economy all the time, it could allow those price increases to rocket out of control. In light of the Fed’s independence, presidents have largely avoided talking about central bank policy at all ever since the early 1990s. Pressuring officials for lower rates was unlikely to help, administrations reasoned, and could backfire by prodding policymakers to keep rates higher for longer to prove that they were independent from the White House. But Donald J. Trump upended that norm when he was president. He called Fed officials “boneheads” and implied that Jerome H. Powell, the Fed chair, was an “enemy” of America for keeping rates too high. And he has already talked about the Fed in political terms as he campaigns as the presumptive Republican nominee, suggesting that cutting interest rates before November would be a ploy to help President Biden win a second term. Some of Mr. Trump’s allies outside his campaign have proposed that the Fed’s regulatory functions should be subject to White House review. Mr. Trump has also said he intends to bring all “independent agencies” under White House control, although he and his campaign have not specifically addressed directing the Fed’s decisions on interest rates. Direct White House input into Fed policy seems “far-fetched,” said Gabriel Chodorow-Reich, an economics professor at Harvard. But he noted that administrations could chip away at the central bank’s independence in more subtle ways, including through whom they choose to nominate to key Fed positions (Mr. Powell’s term as chair expires in May 2026) and through extended pressure campaigns. “There are elements of this that could happen that are not immediately cataclysmic, but over time, by reducing the Fed’s independence, they make it more difficult” for the Fed to make hard decisions like raising rates to slow the economy, Mr. Chodorow-Reich said.',
      image:
          'https://static01.nyt.com/images/2024/05/01/multimedia/01dc-Fed-politics-lgmp/01dc-Fed-politics-lgmp-superJumbo.jpg?quality=75&auto=webp',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 65, 16, 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 32,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [getNews()],
            )),
          ),
          const BottomBar(),
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var news in newsList) {
      list.add(InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
                builder: (BuildContext context) => DescriptionNewsPage(
                      news: news,
                    )),
          );
        },
        child: Container(
          width: 175,
          height: 278,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black.withOpacity(0.06)),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                height: 98,
                width: 98,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          news.image!,
                        ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      news.title!,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ));
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: list,
    );
  }
}
