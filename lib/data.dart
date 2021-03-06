import 'package:cook_app/models/currency.dart';

final currencies = <Currency>[
  const Currency(
    id: '1', 
    name: 'Bitcoin', 
    imagePath: 'assets/btc.png', 
    ticker: 'BTC', 
    price: 47086.99,
    about: 'Биткоин — это децентрализованная цифровая валюта одноименной пиринговой платежной системы, где пользователи осуществляют операции самостоятельно, без централизованного контроля и посредников.'
  ),
  const Currency(
    id: '2', 
    name: 'Ether', 
    imagePath: 'assets/ether.png', 
    ticker: 'ETH', 
    price: 3388.70,
    about: 'Эфириум — это цифровая валюта, разработанная на базе открытой программной платформы, основывающейся на технологии блокчейна, которая позволяет разработчикам создавать и размещать децентрализованные приложения, реализующие умные контракты. Эфириум был предложен в конце 2013 года Виталиком Бутериным, исследователем и программистом в области криптовалют.'
  ),
  const Currency(
    id: '3', 
    name: 'Solana', 
    imagePath: 'assets/solana.png', 
    ticker: 'SOL', 
    price: 120.337,
    about: 'Что такое криптовалюта Solana? Криптовалюта Solana ― децентрализованная одноранговая цифровая валюта, нацеленная на коренную перестройку традиционного финансового ландшафта. Solana позволяет создать более экономичную и быструю экосистему финансовых учреждений, ориентированную на пользователя.'
  ),
];