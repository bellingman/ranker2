# Ranker PWA

A simple, mobile-friendly Progressive Web App (PWA) for creating and managing ranked lists with drag-and-drop functionality.

## Features

- 📱 **Mobile-First Design** - Optimized for touch devices
- 🔌 **Offline Capable** - Works without internet connection
- 📲 **Installable** - Add to home screen like a native app
- 🎯 **Drag & Drop** - Intuitive reordering of items
- 🎨 **Colorful UI** - Each item gets a random vibrant color
- ✏️ **Inline Editing** - Click to edit item labels
- ➕ **Easy Management** - Add and delete items with simple controls

## Live Demo

[Coming soon - GitHub Pages link will be here]

## Installation

### As a Web App

1. Visit the app URL in Chrome or Safari on your mobile device
2. **Android**: Tap menu (⋮) → "Add to Home screen"
3. **iOS**: Tap share button → "Add to Home Screen"

### For Development

1. Clone this repository
```bash
git clone https://github.com/bellingman/ranker-pwa.git
cd ranker-pwa
```

2. Serve the files locally
```bash
# Using Python
python3 -m http.server 8080

# Using Node.js
npx serve .

# Using PHP
php -S localhost:8080
```

3. Open `http://localhost:8080/ranker2.html` in your browser

## File Structure

```
ranker-pwa/
├── ranker2.html           # Main application
├── manifest.json          # PWA configuration
├── sw.js                  # Service worker for offline support
├── icon-192.png          # App icon (192x192) - needs to be created
├── icon-512.png          # App icon (512x512) - needs to be created
└── README.md             # This file
```

## Creating App Icons

You need to create two PNG icons for the PWA to work properly:

1. **icon-192.png** - 192x192 pixels
2. **icon-512.png** - 512x512 pixels

### Quick Icon Creation

Use any image editor to create a 512x512 square with:
- Background: #3498db (blue)
- Text: "R2" or "Ranker" in white
- Save as `icon-512.png`
- Resize to 192x192 and save as `icon-192.png`

Or use online generators:
- [RealFaviconGenerator](https://realfavicongenerator.net/)
- [Favicon Generator](https://www.favicon-generator.org/)

## Technologies Used

- HTML5
- CSS3
- Vanilla JavaScript
- Service Workers
- Web App Manifest

## Browser Support

- Chrome/Edge (Android) ✅
- Safari (iOS) ✅
- Firefox ✅
- Desktop browsers ✅

## License

MIT License - feel free to use this project for personal or commercial purposes.

## Contributing

Pull requests are welcome! Feel free to submit issues or enhancement requests.

## Author

Created by bellingman
