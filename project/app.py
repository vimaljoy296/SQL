from flask import Flask, request, jsonify
import helper

app = Flask(__name__)

# Ensure templates are auto-reloaded
app.config["TEMPLATES_AUTO_RELOAD"] = True

# Configure CS50 Library to use SQLite database
# db = SQL("sqlite:///ecommerce.db")

@app.after_request
def after_request(response):
    """Ensure responses aren't cached"""
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Expires"] = 0
    response.headers["Pragma"] = "no-cache"
    return response

# Define routes
@app.route('/')
def index():
    return 'Welcome to the Furniture Store!'

@app.route('/users', methods=['GET'])
def get_users():
    if request.method == 'GET':
        users = helper.execute_query("SELECT * FROM Users")
        if not len(users):
            return "No users exist."
        return jsonify(users)

@app.route('/users/<int:user_id>', methods=['GET'])
def get_user_by_id(user_id):
    # Get data about a specific user
    user = helper.execute_query(f'SELECT * FROM Users WHERE UserID = {user_id}')
    if not len(user):
        return "User not found.", 404
    return jsonify(user)

@app.route('/products', methods=['GET'])
def get_products():
    products = helper.execute_query("SELECT * FROM Products")
    return jsonify(products)

@app.route('/products/<int:product_id>', methods=['GET'])
def get_product_by_id(product_id):
    # Get data about a specific product
    product = helper.execute_query(f'SELECT * FROM Products WHERE ProductID = {product_id}')
    if not len(product):
        return "Product not found"
    return jsonify(product)

@app.route('/cart/<int:user_id>', methods=['GET'])
def get_cart(user_id):
    cart_items = helper.execute_query(
        f"""SELECT Products.ProductID, Products.ProductName, CartItems.Quantity, Products.Price AS "Price per Unit"
        FROM CartItems JOIN Products ON CartItems.ProductID = Products.ProductID WHERE userID = {user_id};""")
    return jsonify(cart_items)

@app.route('/orders', methods=['GET'])
def get_orders():
    # Get data about a specific user
    orders = helper.execute_query(f'SELECT * FROM Orders')
    if not len(orders):
        return "No orders exist"
    return jsonify(orders)

@app.route('/orders/<int:order_id>', methods=['GET'])
def get_order_by_id(order_id):
    # Get data about a specific user
    order = helper.execute_query(f'SELECT * FROM Orders WHERE OrderID = {order_id}')
    if not len(order):
        return "Order not found"
    return jsonify(order)

if __name__ == '__main__':
    app.run(debug=True)