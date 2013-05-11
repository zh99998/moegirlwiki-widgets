$.getJSON 'http://zh.moegirl.org/api.php?action=query&list=recentchanges&rcnamespace=0&rctoponly=true&rctype=edit&format=json&callback=?', (data) ->
  for item in data.query.recentchanges
    console.log item
    $('<li/>', class: 'item').append(
      $('<a />', href: "http://zh.moegirl.org/#{item.title}", text: item.title, class: 'title', target: '_blank')
    ).appendTo '.moegirlwiki-widgets'