# Pro100-Mod

1. [Описание проекта](https://github.com/SolarGuru/Pro100-Mod/wiki/%D0%93%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F-%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B0#%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0) 
2. [Установка мода](https://github.com/SolarGuru/Pro100-Mod/wiki/%D0%A3%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0)
3. [Особенности мода](https://github.com/SolarGuru/Pro100-Mod/wiki/%D0%9E%D1%81%D0%BE%D0%B1%D0%B5%D0%BD%D0%BD%D0%BE%D1%81%D1%82%D0%B8-%D0%BC%D0%BE%D0%B4%D0%B0)

Страница проекта ВК:
https://vk.com/ei_pro100mod

Автор:
Андрей Петрушенко a.k.a. SunGuru
sunguru@inbox.ru

## Установка

Для установки Pro100 Mod:

1. Установите Проклятые земли версии 1.06. Скачать можно [отсюда](https://vk.com/page-99140_49483514).
2. Установите Стартер для запуска модов. Скачать можно [оттуда же](https://vk.com/page-99140_49483514).
3. Скачайте мод. Скачать актуальную версию можно [отсюда](https://github.com/SolarGuru/Pro100-Mod).
4. Распакуйте скачанный архив в папку модов Стартера: /Starter/Mods/. По умолчанию, один из файлов мода main.lua будет лежать в папке /Starter/Mods/Pro100-Mod-main/main.lua.
5. Обновите addon.dll. Для этого из папки с модом скопируйте addon.dll в папку Стартера с заменой. Сделайте резервную копию, если не уверены.
6. Запустите Стартер EIStarter.exe, выберите мод "Pro100 Mod", и нажмите "Игра".

## Описание

Pro100 Mod - глубокий ребаланс оригинального мультиплеера Проклятых земель с новыми уникальнымии геймплейными механиками. Основа нового баланса - исправление перекосов RPG системы. Теперь каждый класс имеет равные равные возможности для освоения всего ванильного контента от начала до конца прохождения в одиночку или в группе. Остановить вторжение на Гипат теперь под силу не только танкомагу с батарейками!

## Список изменений

Что же нового привнес Pro100 Mod в мультиплеер Проклятых земель?

### Геймплей
Оригинальный геймплей сохранен. Мы управляем одним персонажем, который один или вместе с другими игроками всё также перемещается между аллодами и выполняет задания, получая опыт и накапливая ресурсы для достижения главной цели - защитить Гипат от вторжения империи Хадаган.

### Мир
Мир тоже остался прежним: 4 базы, оригинальные квесты, знакомые враги. Мы точно так же сперва помогаем жителям Поселка в жалких кожанках, а в конце сражаемся с новой угрозой расы джун в лице армии Хадаганцев.

### Враги
Вы столкнетесь со знакомыми врагами. С одной стороны, теперь они представляют меньше угрозы из-за снижения разброса урона оружия и критического урона (в голову) с х3 до х2. С другой, враги теперь больше похожи на персонажа игрока, аналогично одеты и обучены, и поэтому не дадут расслабиться.

Обычно враги спокойны и не замечают персонажей вдалеке. Но если что-то потревожит их, то спрятаться из их поля зрения будет сложнее, а на успокоение потребуется некоторое время. Сам же персонаж игрока больше не умеет видеть врагов спиной.

### Боевая система
Бои претерпели изменения. В бою здоровье (которое у всех равно 100, отсюда и название - Pro100 Mod) не восстанавливается, а запас сил (тоже у всех равен 100) плавно восстанавливается даже во время нанесения ударов и колдовства. Чтобы выйти из боя, необходимо на 10 игровых секунд перестать бегать, колдовать, атаковать и становиться целью атаки. Выйдя из боя, персонаж сам быстро восстановит потерянное здоровье и силы.

### Запас сил
Запас сил теперь является ресурсом не только для магов, но и для бойцов. Помимо колдовства, запас сил теперь расходуется и на ведение боя, снижаясь при нападении и уклонении персонажа, а также при получении урона. Чем медленнее оружие, тем быстрее накапливается усталость. Уставший персонаж хуже атакует и защищается. Но есть и хорошие новости - враги тоже устают!

Запас сил не расходуется при беге, но и не восстанавливается. Если запаса сил недостаточно для применения заклинания, то оно всё равно будет применено, но замедлится на время восстановления нехватающих сил.

### Агрессивный / пассивный режим
Агрессивный режим остался прежним, а вот персонажи в пассивном режиме теперь тратят меньше запаса сил на нападение и уклонение, но показатель атаки при этом снижается. Враги тоже переключаются между режимами при накоплении усталости. Переключение между режимами помогает управлять ходом боя, позволяя либо бросить все силы на добивание врага, либо сохранить их в затяжном бою.

### Ранения конечностей
Штрафы при ранении рук и ног наступают раньше, но замедляют слабее. Ранение туловища, где расположены жизненно важные органы, замедляет скорость восстановления запаса сил и здоровья (если таковой имеется).

### Атрибуты
Нововведения Pro100 Mod, изображение №3
Сила больше не влияет на максимальное здоровье персонажа (которое всегда 100). Вместо этого меняется здоровье конечностей, откладывая наступление штрафов у более сильных персонажей. От силы зависит максимальная нагрузка, а также урон оружия ближнего боя и всей атакующей магии. На урон кинжалов сила не влияет.

Ловкость больше не определяет величину запаса сил (который всегда 100). Вместо этого она снижает расход запаса сил на нападение и уклонение от атак. Высокая ловкость чуть больше влияет на действия персонажа, повышает эффективность накладываемой негативной продолжительной магии вроде «Ослабления» и радиус заклинаний разведки вроде «Ясновидения».

Разум сильнее влияет на получаемый опыт. От разума зависит эффективность применяемых долговременных позитивных и исцеляющих заклинаний, а также расход сил на все заклинания.

### Навыки
Навык дальнего боя также повышает защиту при использовании луков и арбалетов.

### Умения (перки)
Некоторые перки сильно изменились не только в количественном плане, но и в качественном:

- Новый перк «Стабильность» снижает получаемый в голову урон.
- «Регенерация» восстанавливает здоровье даже в бою.
- «Выносливость» вместо увеличения запаса сил снижает его расход на нападение, уклонение и колдовство. Не ускоряет его восстановление.
- «Нагрузка» повышает макс. нагрузку на константу, а не в процентах.
- «Лук» и «Арбалет» также увеличивают и защиту персонажа.
- Удалены перки «Здоровье» и «Ночное зрение».

Перки на всех уровнях стоят одинаково - можно прокачивать перки в любом порядке без риска потери опыта из-за недокачаных до Ур.3 перков.

### Заклинания
Вся магия в игре переработана.

Во-первых, механика работы некоторых заклинаний сильно изменилась:

- Почти все заклинания получили модификатор эффекта, определяющий силу накладываемого заклинания. В эти заклинания можно вставить руны У+.
- Заклинания можно читать даже при недостаточном запаса сил. При этом время чтения будет увеличено на время, необходимое для восстановления недостающих сил.
- Новое заклинание школы астрала: «Увядание». Работает как анти-регенерация, но не может убить цель. Продается на Гипате.
- Новые заклинания школы чувств: «Зрение мертвеца», показывающее живых врагов в радиусе от персонажа, и «Ослепление мертвеца», скрывающее цель от зрения мертвецов. Продается в Пещере.
- «Орлиный взор» также повышает атаку дальнего боя.
- «Ускорение» и «Замедление» перенесены в школу магии чувств.
- «Увеличение силы» и «Ослабление» меняют только урон оружия ближнего боя (не кинжалов) и больше не меняют здоровье.
- Удалены заклинания «Тихий шаг», «Ночное зрение», «Парализация», «Антимагия», «Слабоумие».

Во-вторых, растущую с прохождением силу заклинаний компенсируют другие растущие параметры: броня цели, урон оружия в руках, сложность имеющихся заклинаний. Эффект заклинаний при этом может снижаться до нуля:

- Эффективность «Лечения», «Регенерации», «Увядания», «Защиты от огня/молний/кислоты/магии», «Невидимости», «Ослепления мертвеца» снижается значением брони цели.
- Дальность обзора «Орлиного взора» и «Зрения мертвеца» снижается значением брони шлема.
- Бонус атаки от «Орлиного взора» снижается значением урона оружия в руках.
- Эффективность «Увеличения силы», «Ослабления» снижается значением урона оружия в руках и зависит от показателя действий оружия.
- Эффективность «Ускорения» и «Замедления» снижается максимальным из трёх значений: броня, мин. урон оружия или макс. сложность заклинаний в наборе у мага.

В-третьих, как упомянуто ранее, на эффект заклинаний, в том числе и вложенных в предметы, влияют атрибуты мага:

- На урон стихийных атакующих заклинаний влияет сила мага.
- На эффект негативных временных и на радиус заклинаний разведки влияет ловкость мага.
- На эффект позитивных временных и исцеляющих заклинаний влияет разум мага.

### Зачарования
Если сложность заклинания в зачарованном предмете выше, чем познания персонажа в данной школе магии, то такое заклинание не будет работать. Больше нет смысла временно вкладывать очки в магию для создания сложных зачарований, а батарейки без познаний в магии астрала работать не будут.

Энергия всех предметов восстанавливается с постоянной скоростью 1 ед. энергии в 1 игровую секунду.

На эффект вложенных в предметы заклинаний также влияют атрибуты персонажа.

### Предметы
Добавлены отсутствовавшие в мультиплеере комплекты доспехов из сингла. Стоимость некоторых комплектов одинакова, но они различаются по величине брони и весу.

Добавлено оружие из Затерянных в Астрале - каменный боевой меч, костяной кинжал, костяной арбалет. Добавлен алмазный лук. Длинный лук перенесен на Суслангер, металлический арбалет - на Ингос. Таким образом, с начала до конца прохождения можно играть как через луки, так и через арбалеты.

В Пещеру добавлен новый жезл - перстень с алмазом.

Повышение нагрузки выше 300 единиц постепенно повышает шумность персонажа.

При перегрузе персонаж не только теряет возможность бегать, но и получает штраф к атаке, защите и расходу запаса сил на магию, а магия в предметах перестает работать.

### Экономика
Продажа и сборка остались прежними - 50% и 20% соответственно. Разбор предметов бесплатен. Полностью сломанная вещь ремонтируется за 50% ее стоимости.

### Другое
Десятки других изменений, улучшающих графические элементы, логику взаимодействия с миром и общие ощущения от игры.

### Заключение
Это все основные изменения, которые привносит Pro100 Mod в оригинальный мультиплеер ПЗ. Больше информации можно почерпнуть из подсказок и описаний в игре, но кое-что всё же придется найти самому игроку. Удачи в поиске!
