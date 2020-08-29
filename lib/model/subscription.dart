class Subscription {
  const Subscription({this.description, this.duration, this.price});

  final String description;
  final int duration;
  final String price;
}

const subscriptions = [
  Subscription(
      price: '1,500',
      description: 'Enjoy 3 moths of unlimited streaming',
      duration: 3),
  Subscription(
      price: '2,500',
      description: 'Enjoy 6 moths of unlimited streaming',
      duration: 6),
  Subscription(
      price: '5,000',
      description: 'Enjoy 12 moths of unlimited streaming',
      duration: 12),
];
