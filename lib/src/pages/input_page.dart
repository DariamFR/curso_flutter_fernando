import 'package:fernando_componentes/src/wigets/c_text_field.dart';
import 'package:fernando_componentes/src/wigets/c_text_form_field.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String nombre = '';
  String email = '';
  String password = '';
  bool showPasswordField = false;
  String fecha = '';

  String? opcionSeleccionada ;

  List<String> poderes = [
    'Volar',
    'Spuer Fuerza',
    'Rayos X',
    'Vision Nocturna'
  ];

  TextEditingController _inputFildDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearFecha(),
          Divider(),
          _crearCheckBox(),
          if (showPasswordField == true) ...[
            Divider(),
            _crearPassword(),
          ],
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
          Divider(),
          nombreTextField,
          Divider(),
          CTextField(
            icon: Icon(Icons.accessible_outlined),
            suffixIcon: Icon(Icons.add),
          ),
          TextFormField(
            maxLines: 3,
          ),
          CTextFormField(
            icon: Icon(Icons.account_circle_outlined),
            hintText: Text('Nombre'),
          )
        ],
      ),
    );
  }

  final CTextField nombreTextField = CTextField(
    textCapitalization: TextCapitalization.words,
    icon: Icon(Icons.account_circle),
  );
  
  _crearInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text('Letras ${nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        setState(() {
          nombre = valor;
        });
      },
    );
  }

  _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (valor) {
        setState(() {
          email = valor;
        });
      },
    );
  }

  _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      onChanged: (valor) {
        setState(() {
          password = valor;
        });
      },
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $nombre'),
      subtitle: Text('Email: $email'),
      trailing: Text(opcionSeleccionada ?? ''),
      leading: Image.asset(
        'assets/images/heroe.png',
        width: 40.0,
        height: 40.0,
      ),
    );
  }

  _crearCheckBox() {
    return CheckboxListTile(
        title: Text('Contraseña'),
        value: showPasswordField,
        onChanged: (bool? value) {
          setState(() {
            showPasswordField = value ?? false;
          });
        });
  }

  _crearFecha() {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFildDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2030),

    );

    if (picked != null) {
      setState(() {
        fecha = picked.toString();
        _inputFildDateController.text = fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = [];

    poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  _crearDropdown() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        DropdownButton(
          hint: Text('Seleccionar poder'),
          value: opcionSeleccionada,
          items: getOpcionesDropdown(),
          onChanged: (opt) {
            setState(() {
              opcionSeleccionada = opt!;
            });
          },
        )
      ],
    );
  }
}
