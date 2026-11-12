
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiselect/multiselect.dart';
import 'sql_helper.dart';


void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MainGUIModel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: clinic_private_types_in_public_api, library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainPage'),
      ),      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                ).then((value) {
                  setState(() {});
                });
              },
              child: const Text('User Page'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                ).then((value) {
                  setState(() {});
                });
              },
              child: const Text('Communities Page'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                ).then((value) {
                  setState(() {});
                });
              },
              child: const Text('Chat Page'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                ).then((value) {
                  setState(() {});
                });
              },
              child: const Text('Notifications Page'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

//for ItemVisualizationPage screen
class ItemVisualizationPage extends StatefulWidget {
  const ItemVisualizationPage({super.key});

  @override
  State<ItemVisualizationPage> createState() => _ItemVisualizationPageState();
}

class _ItemVisualizationPageState extends State<ItemVisualizationPage> {
    List<Map<String, dynamic>> _reviews = [];
    bool _isLoadingReview = true;
    final TextEditingController _contentController = TextEditingController();
    final TextEditingController _commentIdController = TextEditingController();
    int? _commentId;
    final TextEditingController _itemController = TextEditingController();
    List<String> _existingItems = [];
    final TextEditingController _userController = TextEditingController();
    List<String> _existingUsers = [];
    final TextEditingController _itemController = TextEditingController();
    List<String> _existingItems = [];
    final TextEditingController _userController = TextEditingController();
    List<String> _existingUsers = [];
                           
// This function is used to fetch all data from the database
  void _refreshReviews() async {
    final reviewdata = await SQLHelper.getReviews();
        setState(() {
          _reviews = reviewdata;
          _isLoadingReview = false;
        });
  }

  @override
  void initState() {
    super.initState();
    _refreshReviews(); // Loading the data when the app starts
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
    _fetchExistingItems();
    _fetchExistingUsers();
    _fetchExistingItems();
    _fetchExistingUsers();
}
}
}
}
}
}
}
                     
  // This function will be triggered when the floating button is pressed
  // It will also be triggered when you want to update an item
  void _showForm(int? id) async {
    if (id != null) {
      final existingReview = _reviews.firstWhere((element) => element['id'] == id);
      _contentController.text = existingReview['content'];
      final commentIdValue = existingReview['commentId'];
      _commentIdController.text = commentIdValue != null ? commentIdValue.toString() : '';  
                     
        final itemId = existingReview['itemid'];

        if (itemId != null) {
        // Fetch the item name using the item ID
        final itemName = await SQLHelper.getItem(itemId);
        _itemController.text = itemName!; 
        }  
                     
        final userId = existingReview['userid'];

        if (userId != null) {
        // Fetch the user name using the user ID
        final userName = await SQLHelper.getUser(userId);
        _userController.text = userName!; 
        }  
                     
        final itemId = existingReview['itemid'];

        if (itemId != null) {
        // Fetch the item name using the item ID
        final itemName = await SQLHelper.getItem(itemId);
        _itemController.text = itemName!; 
        }  
                     
        final userId = existingReview['userid'];

        if (userId != null) {
        // Fetch the user name using the user ID
        final userName = await SQLHelper.getUser(userId);
        _userController.text = userName!; 
        }
    }
    showModalBottomSheet(
      // ignore: use_build_context_synchronously
      context: context,
      elevation: 5,
      isScrollControlled: true,
      builder: (_) => SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          // this will prevent the soft keyboard from covering the text fields
          bottom: MediaQuery.of(context).viewInsets.bottom + 120,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _contentController,
              decoration: const InputDecoration(hintText: 'Content'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _commentIdController,
              decoration: const InputDecoration(hintText: 'CommentId'),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
               FilteringTextInputFormatter.digitsOnly,
              ],
              onChanged: (value) {
               if (value.isNotEmpty) {
                  _commentId = int.parse(value);
                } else {
                 //_commentId = null;
                }
               },
              ),
             const SizedBox(
              height: 10,
             ),
            DropdownButtonFormField<String>(
              value: _itemController.text,
              decoration: const InputDecoration(
                hintText: 'Item',
                labelText: 'Item',
              ),
              items: [
                const DropdownMenuItem(
                  value: '',
                  child: Text('Select Item'),
                ),
                for (var item in _existingItems)
                  DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  ),
              ],
              onChanged: (value) {
                setState(() {
                 if (value == null || value.isEmpty) {
                 _itemController.text = '';
                 } else {
                  _itemController.text = value;
                 }
                });
               },
            ),
             const SizedBox(
              height: 20,
            ),
            DropdownButtonFormField<String>(
              value: _userController.text,
              decoration: const InputDecoration(
                hintText: 'User',
                labelText: 'User',
              ),
              items: [
                const DropdownMenuItem(
                  value: '',
                  child: Text('Select User'),
                ),
                for (var user in _existingUsers)
                  DropdownMenuItem(
                    value: user,
                    child: Text(user),
                  ),
              ],
              onChanged: (value) {
                setState(() {
                 if (value == null || value.isEmpty) {
                 _userController.text = '';
                 } else {
                  _userController.text = value;
                 }
                });
               },
            ),
             const SizedBox(
              height: 20,
            ),
            DropdownButtonFormField<String>(
              value: _itemController.text,
              decoration: const InputDecoration(
                hintText: 'Item',
                labelText: 'Item',
              ),
              items: [
                const DropdownMenuItem(
                  value: '',
                  child: Text('Select Item'),
                ),
                for (var item in _existingItems)
                  DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  ),
              ],
              onChanged: (value) {
                setState(() {
                 if (value == null || value.isEmpty) {
                 _itemController.text = '';
                 } else {
                  _itemController.text = value;
                 }
                });
               },
            ),
             const SizedBox(
              height: 20,
            ),
            DropdownButtonFormField<String>(
              value: _userController.text,
              decoration: const InputDecoration(
                hintText: 'User',
                labelText: 'User',
              ),
              items: [
                const DropdownMenuItem(
                  value: '',
                  child: Text('Select User'),
                ),
                for (var user in _existingUsers)
                  DropdownMenuItem(
                    value: user,
                    child: Text(user),
                  ),
              ],
              onChanged: (value) {
                setState(() {
                 if (value == null || value.isEmpty) {
                 _userController.text = '';
                 } else {
                  _userController.text = value;
                 }
                });
               },
            ),
             const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                // Save new memeber
                if (id == null) {
                      if (_itemController.text.isEmpty) {
                      // item is not specified, show a message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                       content: Text('Please specify the item.'),
                      ),
                    );
                  }
                      if (_userController.text.isEmpty) {
                      // user is not specified, show a message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                       content: Text('Please specify the user.'),
                      ),
                    );
                  }
                      if (_itemController.text.isEmpty) {
                      // item is not specified, show a message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                       content: Text('Please specify the item.'),
                      ),
                    );
                  }
                      if (_userController.text.isEmpty) {
                      // user is not specified, show a message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                       content: Text('Please specify the user.'),
                      ),
                    );
                  } 
                  await _addReview();

                // Clear the text fields
                _contentController.text = '';
                _commentIdController.text = '';
                _itemController.text = '';
                _userController.text = '';
                _itemController.text = '';
                _userController.text = '';
              }
            }
                else {
                      if (_itemController.text.isEmpty) {
                      // item is not specified, show a message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                       content: Text('Please specify the item.'),
                      ),
                    );
                  }
                      if (_userController.text.isEmpty) {
                      // user is not specified, show a message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                       content: Text('Please specify the user.'),
                      ),
                    );
                  }
                      if (_itemController.text.isEmpty) {
                      // item is not specified, show a message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                       content: Text('Please specify the item.'),
                      ),
                    );
                  }
                      if (_userController.text.isEmpty) {
                      // user is not specified, show a message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                       content: Text('Please specify the user.'),
                      ),
                    );
                  } 
                  await _updateReview(id);

                // Clear the text fields
                _contentController.text = '';
                _commentIdController.text = '';
                _itemController.text = '';
                _userController.text = '';
                _itemController.text = '';
                _userController.text = '';
              }
            }
               
                // Close the bottom sheet
                if (!mounted) return;
                Navigator.of(context).pop();
              },
              child: Text(id == null ? 'Create New' : 'Update'),
            ),
            const SizedBox(
            height: 80, // Adjust the height based on your needs
          ),
          ],
        ),
      ),
    );
  }

// Insert a new Review to the database
  Future<void> _addReview() async {
          if (_itemController.text.isEmpty) {
            // Item is not specified, show a message to the user
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('Please specify the item.'),
              ),
            );
            return;
          }   
         final item = _itemController.text;
         final itemId = await SQLHelper.getItemIdByName(item);
          if (_userController.text.isEmpty) {
            // User is not specified, show a message to the user
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('Please specify the user.'),
              ),
            );
            return;
          }   
         final user = _userController.text;
         final userId = await SQLHelper.getUserIdByName(user);
          if (_itemController.text.isEmpty) {
            // Item is not specified, show a message to the user
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('Please specify the item.'),
              ),
            );
            return;
          }   
         final item = _itemController.text;
         final itemId = await SQLHelper.getItemIdByName(item);
          if (_userController.text.isEmpty) {
            // User is not specified, show a message to the user
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('Please specify the user.'),
              ),
            );
            return;
          }   
         final user = _userController.text;
         final userId = await SQLHelper.getUserIdByName(user);
      await SQLHelper.createReview(
          _contentController.text,
          _commentId,
      );
      _refreshReviews();
    }

// Update an existing Review
  Future<void> _updateReview(int id) async {
          if (_itemController.text.isEmpty) {
            // Item is not specified, show a message to the user
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('Please specify the item.'),
              ),
            );
            return;
          }   
         final item = _itemController.text;
         final itemId = await SQLHelper.getItemIdByName(item);
          if (_userController.text.isEmpty) {
            // User is not specified, show a message to the user
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('Please specify the user.'),
              ),
            );
            return;
          }   
         final user = _userController.text;
         final userId = await SQLHelper.getUserIdByName(user);
          if (_itemController.text.isEmpty) {
            // Item is not specified, show a message to the user
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('Please specify the item.'),
              ),
            );
            return;
          }   
         final item = _itemController.text;
         final itemId = await SQLHelper.getItemIdByName(item);
          if (_userController.text.isEmpty) {
            // User is not specified, show a message to the user
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('Please specify the user.'),
              ),
            );
            return;
          }   
         final user = _userController.text;
         final userId = await SQLHelper.getUserIdByName(user);
      await SQLHelper.updateReview(
          id,
          _contentController.text,
          _commentId,
      );
      _refreshReviews();
    }

// Delete an existing Review
  void _deleteReview(int id) async {
    await SQLHelper.deleteReview(id);
      
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Successfully deleted a Review!'),
      ),
    );
    _refreshReviews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Directory'),
      ),
      body: _isLoadingReview
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _reviews.length,
              itemBuilder: (context, index) => Card(
                color: Colors.orange[200],
                margin: const EdgeInsets.all(15),
                child: ListTile(
                  title: Text(_reviews[index]['content']),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () => _showForm(_reviews[index]['id']),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => _deleteReview(_reviews[index]['id']),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
    List<Map<String, dynamic>> _items = [];
    bool _isLoadingItem = true;
    final TextEditingController _priceController = TextEditingController();
    final TextEditingController _giveawayController = TextEditingController();
    final TextEditingController _categoryController = TextEditingController();
    final TextEditingController _priceCurrencyController = TextEditingController();
    final TextEditingController _itemIdController = TextEditingController();
    final TextEditingController _statusController = TextEditingController();
    final TextEditingController _titleController = TextEditingController();
    final TextEditingController _conditionController = TextEditingController();
    final TextEditingController _exchangeOptionController = TextEditingController();
    final TextEditingController _descriptionController = TextEditingController();
    int? _itemId;
    final TextEditingController _userController = TextEditingController();
    List<String> _existingUsers = [];
    List<String> _existingCategorys = [];
    List<String> selected = [];
    List<String> categoryNames = [];
    List<int> selectedCategoryIds = [];
    List<String> selectedCategoryNames = [];
    List<String> _existingTransactions = [];
    List<String> selected = [];
    List<String> transactionNames = [];
    List<int> selectedTransactionIds = [];
    List<String> selectedTransactionNames = [];
                           
// This function is used to fetch all data from the database
  void _refreshItems() async {
    final itemdata = await SQLHelper.getItems();
        setState(() {
          _items = itemdata;
          _isLoadingItem = false;
        });
  }

  @override
  void initState() {
    super.initState();
    _refreshItems(); // Loading the data when the app starts
    _fetchExistingUsers();
    _fetchExistingCategorys();
          }
  void _fetchExistingCategorys() async {
    final categorys = await SQLHelper.getAllCategorys();
    setState(() {
      _existingCategorys = categorys;
    });
  }


  void _fetchExistingUsers() async {
    final users = await SQLHelper.getAllUsers();
    setState(() {
      _existingUsers = users;
    });
  }
    _fetchExistingTransactions();
          }
  void _fetchExistingTransactions() async {
    final transactions = await SQLHelper.getAllTransactions();
    setState(() {
      _existingTransactions = transactions;
    });
  }


  void _fetchExistingUsers() async {
    final users = await SQLHelper.getAllUsers();
    setState(() {
      _existingUsers = users;
    });
  }
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
                     
  // This function will be triggered when the floating button is pressed
  // It will also be triggered when you want to update an item
  void _showForm(int? id) async {
    if (id != null) {
      final existingItem = _items.firstWhere((element) => element['id'] == id);
      _priceController.text = existingItem['price'];
      _giveawayController.text = existingItem['giveaway'];
      _categoryController.text = existingItem['category'];
      _priceCurrencyController.text = existingItem['priceCurrency'];
      final itemIdValue = existingItem['itemId'];
      _itemIdController.text = itemIdValue != null ? itemIdValue.toString() : '';
      _statusController.text = existingItem['status'];
      _titleController.text = existingItem['title'];
      _conditionController.text = existingItem['condition'];
      _exchangeOptionController.text = existingItem['exchangeOption'];
      _descriptionController.text = existingItem['description'];  
                     
        final userId = existingItem['userid'];

        if (userId != null) {
        // Fetch the user name using the user ID
        final userName = await SQLHelper.getUser(userId);
        _userController.text = userName!; 
        }
        
        // Fetch the category names using the Item ID
        final categoryNames = await SQLHelper.getCategoryNamesByItemId(id);
        setState(() {
          selected = categoryNames;
         });
        
        // Fetch the transaction names using the Item ID
        final transactionNames = await SQLHelper.getTransactionNamesByItemId(id);
        setState(() {
          selected = transactionNames;
         });
    }
    showModalBottomSheet(
      // ignore: use_build_context_synchronously
      context: context,
      elevation: 5,
      isScrollControlled: true,
      builder: (_) => SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          // this will prevent the soft keyboard from covering the text fields
          bottom: MediaQuery.of(context).viewInsets.bottom + 120,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _priceController,
              decoration: const InputDecoration(hintText: 'Price'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _giveawayController,
              decoration: const InputDecoration(hintText: 'Giveaway'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _categoryController,
              decoration: const InputDecoration(hintText: 'Category'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _priceCurrencyController,
              decoration: const InputDecoration(hintText: 'PriceCurrency'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _itemIdController,
              decoration: const InputDecoration(hintText: 'ItemId'),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
               FilteringTextInputFormatter.digitsOnly,
              ],
              onChanged: (value) {
               if (value.isNotEmpty) {
                  _itemId = int.parse(value);
                } else {
                 //_itemId = null;
                }
               },
              ),
             const SizedBox(
              height: 10,
             ),
            TextField(
              controller: _statusController,
              decoration: const InputDecoration(hintText: 'Status'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _conditionController,
              decoration: const InputDecoration(hintText: 'Condition'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _exchangeOptionController,
              decoration: const InputDecoration(hintText: 'ExchangeOption'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(hintText: 'Description'),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField<String>(
              value: _userController.text,
              decoration: const InputDecoration(
                hintText: 'User',
                labelText: 'User',
              ),
              items: [
                const DropdownMenuItem(
                  value: '',
                  child: Text('Select User'),
                ),
                for (var user in _existingUsers)
                  DropdownMenuItem(
                    value: user,
                    child: Text(user),
                  ),
              ],
              onChanged: (value) {
                setState(() {
                 if (value == null || value.isEmpty) {
                 _userController.text = '';
                 } else {
                  _userController.text = value;
                 }
                });
               },
            ),
             const SizedBox(
              height: 20,
            ),
            DropDownMultiSelect(
              onChanged: (List<String> x) {
                setState(() {
                  selected = x;
                });
              },
              options: _existingCategorys,
              selectedValues: selected,
              whenEmpty: 'Select Categorys',
            ),
            const SizedBox(
              height: 20,
            ),
            DropDownMultiSelect(
              onChanged: (List<String> x) {
                setState(() {
                  selected = x;
                });
              },
              options: _existingTransactions,
              selectedValues: selected,
              whenEmpty: 'Select Transactions',
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                // Save new memeber
                if (id == null) {
                      if (_userController.text.isEmpty) {
                      // user is not specified, show a message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                       content: Text('Please specify the user.'),
                      ),
                    );
                  } 
                                                             
            else { 
                                                             
            else { 
                  await _addItem();

                // Clear the text fields
                _priceController.text = '';
                _giveawayController.text = '';
                _categoryController.text = '';
                _priceCurrencyController.text = '';
                _itemIdController.text = '';
                _statusController.text = '';
                _titleController.text = '';
                _conditionController.text = '';
                _exchangeOptionController.text = '';
                _descriptionController.text = '';
                _userController.text = '';
                selected = [];
                selected = [];
              }
            }
                else {
                      if (_userController.text.isEmpty) {
                      // user is not specified, show a message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                       content: Text('Please specify the user.'),
                      ),
                    );
                  } 
                                                             
            else { 
                                                             
            else { 
                  await _updateItem(id);

                // Clear the text fields
                _priceController.text = '';
                _giveawayController.text = '';
                _categoryController.text = '';
                _priceCurrencyController.text = '';
                _itemIdController.text = '';
                _statusController.text = '';
                _titleController.text = '';
                _conditionController.text = '';
                _exchangeOptionController.text = '';
                _descriptionController.text = '';
                _userController.text = '';
                selected = [];
                selected = [];
              }
            }
               
                // Close the bottom sheet
                if (!mounted) return;
                Navigator.of(context).pop();
              },
              child: Text(id == null ? 'Create New' : 'Update'),
            ),
            const SizedBox(
            height: 80, // Adjust the height based on your needs
          ),
          ],
        ),
      ),
    );
  }

// Insert a new Item to the database
  Future<void> _addItem() async {
          if (_userController.text.isEmpty) {
            // User is not specified, show a message to the user
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('Please specify the user.'),
              ),
            );
            return;
          }   
         final user = _userController.text;
         final userId = await SQLHelper.getUserIdByName(user);
        List<int> selectedCategoryIds = [];
        for (String categoryName in selected) {
          final categoryId = await SQLHelper.getCategoryIdByName(categoryName);
          selectedCategoryIds.add(categoryId);
        }
        List<int> selectedTransactionIds = [];
        for (String transactionName in selected) {
          final transactionId = await SQLHelper.getTransactionIdByName(transactionName);
          selectedTransactionIds.add(transactionId);
        }
      await SQLHelper.createItem(
          _priceController.text,
          _giveawayController.text,
          _categoryController.text,
          _priceCurrencyController.text,
          _itemId,
          _statusController.text,
          _titleController.text,
          _conditionController.text,
          _exchangeOptionController.text,
          _descriptionController.text,
          selectedCategoryIds,
          userId,
          selectedTransactionIds,
          userId,
      );
      _refreshItems();
    }

// Update an existing Item
  Future<void> _updateItem(int id) async {
          if (_userController.text.isEmpty) {
            // User is not specified, show a message to the user
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('Please specify the user.'),
              ),
            );
            return;
          }   
         final user = _userController.text;
         final userId = await SQLHelper.getUserIdByName(user);
        List<int> selectedCategoryIds = [];
        for (String categoryName in selected) {
          final categoryId = await SQLHelper.getCategoryIdByName(categoryName);
          selectedCategoryIds.add(categoryId);
        }
        List<int> selectedTransactionIds = [];
        for (String transactionName in selected) {
          final transactionId = await SQLHelper.getTransactionIdByName(transactionName);
          selectedTransactionIds.add(transactionId);
        }
      await SQLHelper.updateItem(
          id,
          _priceController.text,
          _giveawayController.text,
          _categoryController.text,
          _priceCurrencyController.text,
          _itemId,
          _statusController.text,
          _titleController.text,
          _conditionController.text,
          _exchangeOptionController.text,
          _descriptionController.text,
          selectedCategoryIds,
          userId,
          selectedTransactionIds,
          userId,
      );
      _refreshItems();
    }

// Delete an existing Item
  void _deleteItem(int id) async {
    await SQLHelper.deleteItem(id);
      
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Successfully deleted a Item!'),
      ),
    );
    _refreshItems();
  }
  Future<String> _getSelectedCategoryNames(int id) async {
    selectedCategoryNames = await SQLHelper.getCategoryNamesByItemId(id);
    return selectedCategoryNames.isNotEmpty
        ? selectedCategoryNames.join(", ")
        : "No category names found.";
  }
  Future<String> _getSelectedTransactionNames(int id) async {
    selectedTransactionNames = await SQLHelper.getTransactionNamesByItemId(id);
    return selectedTransactionNames.isNotEmpty
        ? selectedTransactionNames.join(", ")
        : "No transaction names found.";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Directory'),
      ),
      body: _isLoadingItem
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) => Card(
                color: Colors.orange[200],
                margin: const EdgeInsets.all(15),
                child: ListTile(
                  title: Text(_items[index]['condition']),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(_items[index]['exchangeOption']),
                    Text(_items[index]['description']),
                    Text(_items[index]['price']),
                    Text(_items[index]['giveaway']),
                    Text(_items[index]['category']),
                    Text(_items[index]['title']),
              ],
              ),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () => _showForm(_items[index]['id']),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => _deleteItem(_items[index]['id']),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}