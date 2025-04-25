# Create main project directory
New-Item -Path NiboEasyGroceryShop -ItemType Directory
New-Item -Path NiboEasyGroceryShop\src -ItemType Directory

# Create service directories
$services = @("auth-service", "product-service", "order-service", "loyalty-service")
foreach ($service in $services) {
    New-Item -Path NiboEasyGroceryShop\src\services\$service\src\controllers -ItemType Directory
    New-Item -Path NiboEasyGroceryShop\src\services\$service\src\models -ItemType Directory
    New-Item -Path NiboEasyGroceryShop\src\services\$service\src\routes -ItemType Directory
    New-Item -Path NiboEasyGroceryShop\src\services\$service\src\services -ItemType Directory
    New-Item -Path NiboEasyGroceryShop\src\services\$service\src\utils -ItemType Directory
    New-Item -Path NiboEasyGroceryShop\src\services\$service\config -ItemType Directory
    New-Item -Path NiboEasyGroceryShop\src\services\$service\tests -ItemType Directory

    # Create required files in each service
    New-Item -Path NiboEasyGroceryShop\src\services\$service\src\app.js -ItemType File
    New-Item -Path NiboEasyGroceryShop\src\services\$service\config\.env -ItemType File
    New-Item -Path NiboEasyGroceryShop\src\services\$service\package.json -ItemType File
}

# Create API Gateway directories and files
New-Item -Path NiboEasyGroceryShop\src\api-gateway\src\routes -ItemType Directory
New-Item -Path NiboEasyGroceryShop\src\api-gateway\src\middlewares -ItemType Directory
New-Item -Path NiboEasyGroceryShop\src\api-gateway\src\utils -ItemType Directory
New-Item -Path NiboEasyGroceryShop\src\api-gateway\src\app.js -ItemType File
New-Item -Path NiboEasyGroceryShop\src\api-gateway\package.json -ItemType File
New-Item -Path NiboEasyGroceryShop\src\api-gateway\.env -ItemType File
New-Item -Path NiboEasyGroceryShop\src\api-gateway\README.md -ItemType File

# Create Infrastructure directories and Kubernetes manifests
New-Item -Path NiboEasyGroceryShop\src\infrastructure -ItemType Directory
New-Item -Path NiboEasyGroceryShop\src\infrastructure\kubernetes -ItemType Directory
New-Item -Path NiboEasyGroceryShop\src\infrastructure\docker-compose.yml -ItemType File



$kubeFiles = @("auth-service.yaml", "product-service.yaml", "order-service.yaml", "loyalty-service.yaml", "api-gateway.yaml")
foreach ($file in $kubeFiles) {
    New-Item -Path NiboEasyGroceryShop\src\infrastructure\kubernetes\$file -ItemType File
}

# Create root-level files
New-Item -Path NiboEasyGroceryShop\.gitignore -ItemType File
New-Item -Path NiboEasyGroceryShop\README.md -ItemType File
New-Item -Path NiboEasyGroceryShop\LICENSE -ItemType File