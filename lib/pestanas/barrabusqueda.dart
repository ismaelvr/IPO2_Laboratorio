import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart' as english_words;
import 'package:pr_ipo2/interfaces/interfazProximasRutas.dart';
import 'package:pr_ipo2/objetos/drawer.dart';
import 'package:pr_ipo2/objetos/rutasProximas.dart';
//import 'package:pr_ipo2/pestanas/proximasrutas.dart';

// Adapted from search demo in offical flutter gallery:
// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/search_demo.dart
class AppBarBusqueda extends StatefulWidget {
  const AppBarBusqueda({Key key}) : super(key: key);

  @override
  _AppBarBusquedaState createState() => _AppBarBusquedaState();
}

class _AppBarBusquedaState extends State<AppBarBusqueda> {
  final List<String> kEnglishWords;
  ListView proximasRutas;
  InterfazProximasRutas p = new InterfazProximasRutas();
  List<RutaProxima> proxru; //Como cojones meto aquí la listview
  //Cuando la tenga, creo otra vacia y voy recorriendo la original para guardar en la nueva los que coinciden con la busqueda
  _MySearchDelegate _delegate;

  _AppBarBusquedaState()
      : kEnglishWords = List.from(Set.from(english_words.all))
          ..sort(
            (w1, w2) => w1.toLowerCase().compareTo(w2.toLowerCase()),
          ),
        super();

  @override
  void initState() {
    super.initState();
    _delegate = _MySearchDelegate(kEnglishWords);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            //automaticallyImplyLeading: false,
            title: Text('Próximas rutas'),
            backgroundColor: Colors.orange,
            actions: <Widget>[
              IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.search),
                onPressed: () async {
                  final String selected = await showSearch<String>(
                    context: context,
                    delegate: _delegate,
                  );
                  if (selected != null) {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('You have selected the word: $selected'),
                      ),
                    );
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.help),
                onPressed: () {
                  print(proximasRutas);
                  _ayuda(context);
                },
              )
            ],
          ),
          drawer: new Drawer(child: DrawerVista(2)),
          body: InterfazProximasRutas(
            onProxRutasChanged: (proxrut) {
              proximasRutas = proxrut;
            },
          ),
          /*body: Scrollbar(
            child: ListView.builder(
              itemCount: kEnglishWords.length,
              itemBuilder: (context, idx) => ListTile(
                title: Text(kEnglishWords[idx]),
              ),
            ),
          ),*/
        ));
  }
}

void _ayuda(BuildContext context) {
  AlertDialog dialogo = new AlertDialog(
    content: new Text('AYUDA: En implementación'),
    actions: <Widget>[
      new FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text("OK")),
    ],
  );
  showDialog(context: context, child: dialogo);
}

// Defines the content of the search page in `showSearch()`.
// SearchDelegate has a member `query` which is the query string.
class _MySearchDelegate extends SearchDelegate<String> {
  final List<String> _words;
  final List<String> _history;

  _MySearchDelegate(List<String> words)
      : _words = words,
        _history = <String>[],
        super();

  // Leading icon in search bar.
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        // SearchDelegate.close() can return vlaues, similar to Navigator.pop().
        this.close(context, null);
      },
    );
  }

  // Widget of result page.
  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('You have selected the word:'),
            GestureDetector(
              onTap: () {
                // Returns this.query as result to previous screen, c.f.
                // `showSearch()` above.
                this.close(context, this.query);
              },
              child: Text(
                this.query,
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Suggestions list while typing (this.query).
  @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<String> suggestions = this.query.isEmpty
        ? _history
        : _words.where((word) => word.startsWith(query));

    return _SuggestionList(
      query: this.query,
      suggestions: suggestions.toList(),
      onSelected: (String suggestion) {
        this.query = suggestion;
        this._history.insert(0, suggestion);
        showResults(context);
      },
    );
  }

  // Action buttons at the right of search bar.
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      query.isEmpty
          ? IconButton(
              tooltip: 'Voice Search',
              icon: const Icon(Icons.mic),
              onPressed: () {
                this.query = 'TODO: implement voice input';
              },
            )
          : IconButton(
              tooltip: 'Clear',
              icon: const Icon(Icons.clear),
              onPressed: () {
                query = '';
                showSuggestions(context);
              },
            )
    ];
  }
}

// Suggestions list widget displayed in the search page.
class _SuggestionList extends StatelessWidget {
  const _SuggestionList({this.suggestions, this.query, this.onSelected});

  final List<String> suggestions;
  final String query;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int i) {
        final String suggestion = suggestions[i];
        return ListTile(
          leading: query.isEmpty ? Icon(Icons.history) : Icon(null),
          // Highlight the substring that matched the query.
          title: RichText(
            text: TextSpan(
              text: suggestion.substring(0, query.length),
              style: textTheme.copyWith(fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: suggestion.substring(query.length),
                  style: textTheme,
                ),
              ],
            ),
          ),
          onTap: () {
            onSelected(suggestion);
          },
        );
      },
    );
  }
}

/*
class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class Busqueda extends StatelessWidget {
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "Title : $search $index",
        "Description :$search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SearchBar<Post>(
            onSearch: search,
            onItemFound: (Post post, int index) {
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.description),
              );
            },
          ),
        ),
      ),
    );
  }
}*/
