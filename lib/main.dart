import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo 3',
      home: const FormularioScreen(),
    );
  }
}

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
  final _nomeController = TextEditingController();
  final _idadeController = TextEditingController();
  String _nomeSalvo = "Nenhum nome salvo";
  String _idadeSalva = "Nenhuma idade salva";

  @override
  void initState() {
    super.initState();
    _carregarDados();
  }

  Future<void> _carregarDados() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _nomeSalvo = prefs.getString('nome') ?? "Nenhum nome salvo";
      _idadeSalva = prefs.getString('idade') ?? "Nenhuma idade salva";
    });
  }

  Future<void> _salvarDados() async {
    final prefs = await SharedPreferences.getInstance();
    final nome = _nomeController.text;
    final idade = _idadeController.text;

    await prefs.setString('nome', nome);
    await prefs.setString('idade', idade);

    setState(() {
      _nomeSalvo = nome;
      _idadeSalva = idade;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Insira seus dados:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _idadeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Idade',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _salvarDados,
              child: const Text('Salvar Dados'),
            ),
            const SizedBox(height: 40),
            const Text(
              'Dados armazenados:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Nome: $_nomeSalvo', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text('Idade: $_idadeSalva', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
