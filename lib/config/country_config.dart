class CountryConfig {
  static final CountryConfig instance = CountryConfig._internal();

  CountryConfig._internal();

  final Map<String, String> countryMap = {
      'US': '미국',
      'KR': '한국',
      'AR': '아르헨티나',
      'AT': '오스트리아',
      'AU': '호주',
      'BD': '방글라데시',
      'BE': '벨기에',
      'BG': '불가리아',
      'BR': '브라질',
      'CA': '캐나다',
      'CH': '스위스',
      'CN': '중국',
      'DE': '독일',
      'DK': '덴마크',
      'ES': '스페인',
      'FR': '프랑스',
      'GB': '영국',
      'HK': '홍콩',
      'HU': '헝가리',
      'IN': '인도',
      'IT': '이탈리아',
      'JP': '일본',
      'MX': '멕시코',
      'NL': '네덜란드',
      'NZ': '뉴질랜드',
      'PL': '폴란드',
      'RU': '러시아',
      'SE': '스웨덴',
      'SG': '싱가포르',
      'TH': '태국',
      'TR': '터키',
      'TW': '대만',
    };
}
