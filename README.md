# Wellcool App – 29 Product Offline Build

This version keeps the existing Wellcool dark mobile interface and adds the 29 user-provided product images as local app assets.

## Product order
The uploaded images are preserved in the exact upload sequence as `p01.jpg` through `p29.jpg`.

## Categories
- Women Tops
- Women Crop Tops
- Women Sarees
- Women Shoes / Sandals
- Men Shirts
- Men T-Shirts
- Women Suits
- Men Shoes
- Men Baggy Jeans

The Categories cards keep the existing visual design and now open the products belonging to that category. WhatsApp ordering uses the configured Wellcool number internally.

## Build
Use the existing Codemagic workflow. It generates the Android platform files, runs `flutter pub get`, and builds the APK.
