# counter_7 #

**Assignment 7 PBP : Flutter Base Elements**

*Farras Hafizhudin Indra Wijaya - 2106652682 - PBP B*

# Stateless & Stateful Widgets #

*Source* : [geeksforgeeks](https://www.geeksforgeeks.org/flutter-stateful-vs-stateless-widgets/)

**State**

The information that can be read synchronously when the widget is built and might change during the lifetime of the widget. In other words, the state of the widget is the data of the objects that its properties (parameters) are sustaining at the time of its creation (when the widget is painted on the screen). The state can also change when it is used.

**Stateless Widget**

The widgets whose state can not be altered once they are built are called stateless widgets. These widgets are immutable once they are built i.e any amount of change in the variables, icons, buttons, or retrieving data can not change the state of the app. Stateless widget overrides the build() method and returns a widget.

**Stateful Widgets**

The widgets whose state can be altered once they are built are called stateful Widgets. These states are mutable and can be changed multiple times in their lifetime. This simply means the state of an app can change multiple times with different sets of variables, inputs, data. Below is the basic structure of a stateful widget. Stateful widget overrides the createState() and returns a State. It is used when the UI can change dynamically.

# Widgets Catalog #

*Source* : [Flutter Docs](https://docs.flutter.dev/development/ui/widgets)

- [x] Basic Widgets
    - **AppBar**
        
        A Material Design app bar that consists of a toolbar and  - potentially other widgets, such as a TabBar and a FlexibleSpaceBar.
    
    - **Icons, Scaffold**
  
        Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.

    - **Column, Row, Container**
  
        Widgets that combine common painting, positioning, and sizing widgets.

- [x] Text Widgets
    - **Text & TextStyle**
  
        A run of text with a single style. The text style to apply to descendant Text widgets with explicit style.

- [x] Interactivity Widgets
    - **Floating Action Button**

        Widget that floats on the screen over other widgets. It appears as a circular icon on the screen with an icon in its center as its child.

# setState() #

*Source* : [Flutter Docs](https://api.flutter.dev/flutter/widgets/State/setState.html)

Notify the framework that the internal state of this object has changed. Whenever you change the internal state of a State object, make the change in a function that you pass to setState

Generally, setState() is only being used with statefulWidgets insides flutter. setState() tell the flutter to rebuild the page when something defined inside the setState() changes.

# Const & Final #

*Source* : [StackOverflow](https://stackoverflow.com/questions/68362696/is-static-const-vs-final-both-equal-in-dart)

**final** means single-assignment: a final variable or field must have an initializer. Once assigned a value, a final variable's value cannot be changed. final modifies variables.

> ex : Value must be known at run-time and can't be changed after initialized.
```dart
final birthday = getBirthDateFromDB()
``` 

================================

**const** keyword used to make a variable to store a compile time constant value. Compile time constant value is a value which will be constant while compiling.

> ex : Value must be known at compile-time and can't be changed after initialized.
```dart 
const birthday  = "2008/12/25"
```

# Checklist Implementations #

- [x] Start new app called "counter_7" with default styling
    ```
    flutter create counter_7
    cd counter_7
    flutter run
    ```
- [x] Implement a program counter with it's buttons & **bonus**
    - 0 is considered as an even number, and you are not allowed to decrement it being less than 0 (goes to -n).
    - If counter is an odd number, the text's state turned itu "GANJIL" with it's color being cyan. Else, the text's state turned itu "GENAP' with it's color being red.
    ```dart
        String _numIdentifier() {
        if (_counter % 2 == 0) {
        return "GENAP";
        }
        else {
        return "GANJIL";
        }
    }
    ```
    ```dart
    children: <Widget>[
        Text(
        _numIdentifier(),
        style: TextStyle(fontSize: 20, color: _numIdentifier() == "GENAP" ? Colors.red : Colors.cyan),
        ),
        Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
        ),
    ],
    ```
    - Hide the decrement button whenever counter is 0 using Flutter's Visibility widget.
    ```dart
    children: <Widget>[
            Visibility(
              visible: _counter <= 0 ? false : true,
              child: (
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  child: Icon(Icons.remove),
                )
              )
            ),
    ```

================================

# Form & Data Budget #

**Assignment 8 PBP : Flutter Navigation, Form, and Inputs**

*Farras Hafizhudin Indra Wijaya - 2106652682 - PBP B*

# Navigator #

*Source* : [Flutter Docs](https://api.flutter.dev/flutter/widgets/Navigator/pushReplacement.html)

**Navigator.push**

Replace the current route of the navigator that most tightly encloses the given context by pushing the given route and then disposing the previous route once the new route has finished animating in.

**Navigator.pushReplacement**

Adds a Route to the stack of routes managed by the Navigator. Where does the Route come from? By using a MaterialPageRoute, which is useful because it transitions to the new route using a platform-specific animation.

# Widgets Catalog #

*Source* : [Flutter Docs](https://docs.flutter.dev/development/ui/widgets)

- [x] Basic Widgets
    - **AppBar**
        
        A Material Design app bar that consists of a toolbar and  - potentially other widgets, such as a TabBar and a FlexibleSpaceBar.
    
    - **Icons, Scaffold**
  
        Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.

    - **Column, Row, Container**
  
        Widgets that combine common painting, positioning, and sizing widgets.

- [x] Text Widgets
    - **Text, TextStyle & TextButton**
  
        A run of text with a single style. The text style to apply to descendant Text widgets with explicit style.

- [x] Interactivity Widgets
    - **Floating Action Button**

        Widget that floats on the screen over other widgets. It appears as a circular icon on the screen with an icon in its center as its child.

# Flutter Events #

*Source* : [Siemens](https://support.industry.siemens.com/forum/WW/en/posts/what-the-difference-between-click-and-press-in-event/136377)

- *onPressed* = Occurs when the user clicks on a button with the left mouse button, presses RETURN or SPACE. Also occurs when the user right-clicks on an object of the symbol library.

- *onClicked* = Occurs if the user clicks a display and operating object with the mouse or touches the touch display with a finger.

- *onChanged* = Occurs whenever something is changing values

- *onSaved* = Occurs whenever is saved into any type of data, could be variables, elements, attributes, etc

- *onTap* = same as onPressed but instead of buttons, it detects gestures


# How Navigator Works #

Navigator works just like stacks, whenever you move or navigate to a page, it pushes that page to top of the stack and so does the framework animation

For ex :

push -> push the stack up top

pushReplacement -> push the stack up top, dispose the one below it

<center>
A

B

C
</center>

# Checklist Implementations #

- [x] Add 2 new pages called "Form Budget" & "Data Budget".
    ```dart
        ListTile(
            leading: Icon(Icons.home),
            title: Text("Counter"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const CounterPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.report),
            title: Text("Tambah Budget"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AddBudgetPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Data Budget"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BudgetDataPage()),
              );
            },
          ),
    ``` 

- [x] Insert Form Budget's Page Attributes & Elements.
    ```dart
    class currentData {
        static List<String> _judul = [];
        static List<String> _nominal = [];
        static List<String> _budgeting = [];

        static String placeholderJudul = '';
        static String placeholderNominal = '';
        static String placeholderBudgeting = 'Pilih';
        static List<String> jenisBudgeting = ['Pilih','Pemasukan', 'Pengeluaran'];
    }
    ```
    ```dart
    TextButton(
        child: const Text(
        "Simpan",
        style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: () {
        if (_formKey.currentState!.validate()) {
            currentData.addJudul(currentData.placeholderJudul);
            currentData.addNominal(currentData.placeholderNominal);
            currentData.addData(currentData.placeholderBudgeting);
    ```

- [x] Show Posted Data from Form Budget's Page in Data's Budget Page.
    ```dart
    for (int i = 0; i < indexLength; i++) ListView(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        shrinkWrap: true,
        children: [
        SizedBox(height: 20),
        // TODO: Munculkan informasi yang didapat dari form
        Text( 
            judul[i],
            textAlign: TextAlign.left,
        ),
        Text(
            nominal[i],
            textAlign: TextAlign.left,
        ),
        Text(
            budgeting[i],
            textAlign: TextAlign.right,
        ),
        ],
    ),
    ```

- [x] **(Bonus)** Implement DateTimeField & Seperate Drawer class
    -  Insert DateTimeField Attribute & Element in Form Budget's Page, Show it in Data's Budget Page.
    -  Seperate Drawer class.
        ```dart
        class DrawerClass extends StatefulWidget {
            DrawerClass({Key? key}) : super(key: key);

            @override
            _DrawerClassState createState() => _DrawerClassState();
        }

        class _DrawerClassState extends State<DrawerClass> {
        
        @override
        void initState() {
            super.initState();
        }
        ```