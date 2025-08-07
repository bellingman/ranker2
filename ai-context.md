# Ranker 2 - Project Context

This document provides comprehensive context for the Ranker 2 project, a mobile-optimized Progressive Web App (PWA) for creating and managing ranked lists.

## Project Overview

Ranker 2 is a standalone PWA that allows users to create, edit, and reorder ranked items. It works on both desktop and mobile devices, with special optimizations for touch interfaces. The app can be installed on mobile devices and works offline.

## Core Files

- **index.html**: Main application file containing HTML, CSS, and JavaScript
- **manifest.json**: PWA configuration for installability and app metadata
- **sw.js**: Service Worker script for offline functionality and caching
- **icon-128.png** and **icon-512.png**: App icons at different resolutions
- **README.md**: Documentation for users and developers
- **update-version.sh**: Script for automatic version incrementing
- **SETUP-VERSION-HOOK.md**: Instructions for setting up version auto-incrementing

## Key Features

### User Interface
- Draggable colored label items with visible rank numbers
- Inline editing directly within labels (not modal/popup)
- Hover controls for edit and delete actions
- Dynamic resizing based on text content
- Circular add button at the bottom
- Version display (v1.0.0) at the bottom of the app

### Mobile Optimizations
- Enhanced touch-friendly drag and drop implementation with long-press detection
- Movement threshold detection to prevent accidental drags
- Haptic feedback (vibration) when drag starts on supported devices
- Larger touch targets (32px for controls, 56px for add button)
- Active states for better touch feedback
- Always-visible controls on touch devices (detected via `@media (hover: none)`)
- Disabled browser pull-to-refresh and unwanted gestures
- Responsive layout adaptations for smaller screens

### PWA Features
- Installable via browser's "Add to Home Screen" functionality
- Custom install prompt with instructions (shown only on mobile devices)
- Mobile detection using touch capability and screen size
- Works offline after installation
- App shell architecture with service worker caching
- Full-screen mode when launched from home screen

### Data Persistence
- Local storage saving/loading of all items
- Auto-saves on any change (add, edit, delete, reorder)
- Remembers colors assigned to items
- Preserves order between sessions

## Version Management

- Semantic versioning displayed at the bottom of the app (`v[major].[minor].[patch]`)
- Git pre-commit hook script (`update-version.sh`) to auto-increment patch version with each commit
- Manual control available for major/minor version updates
- Version display uses small monospace font in light gray, maintaining UI aesthetics

## Technical Implementation

### HTML Structure
The app uses a simple HTML structure with:
- Container div
- H1 header
- Unordered list for ranked items
- Add button at the bottom
- Install prompt div (conditionally shown)

### CSS Features
- Modern flexbox layout
- Smooth transitions and hover effects
- Media queries for mobile optimization
- Touch-specific styles
- Consistent color scheme and typography

### JavaScript Architecture
The app uses an object-oriented approach with a `RankerApp` class that:
1. Initializes the UI
2. Handles drag and drop events (both mouse and touch)
3. Manages item creation, editing, and deletion
4. Provides persistent storage functionality
5. Manages rank numbering and reordering
6. Handles PWA installation events

### Service Worker
The service worker implements:
- Precaching of essential assets
- Runtime caching of dynamic content
- Offline fallback to index.html
- Cache versioning and management

### Local Storage
Uses browser's localStorage API to:
- Store item text
- Store item colors
- Preserve item ordering
- Remember if install prompt was dismissed

### PWA Implementation
The app follows PWA best practices:
- Valid web app manifest
- Proper theme colors and display modes
- Correct icon sizes and formats
- Service worker lifecycle management
- "Add to Home Screen" functionality

## Mobile-Specific Enhancements

1. **Touch Handling**
   - Custom touch event listeners for drag operations
   - Long-press detection (300ms) before initiating drag
   - Movement threshold detection (5px) to filter accidental movements
   - Haptic feedback (vibration) when drag starts
   - Visual feedback during touch drag (scale up effect)
   - Prevention of browser gestures during drag operations
   - Touch-friendly button sizing
   - Careful detection of button touches to avoid accidental drags

2. **Keyboard Handling**
   - Mobile keyboard optimizations for text input
   - Auto-capitalization for better text entry
   - Disabled autocomplete for better UX

3. **Visual Adaptations**
   - Controls always visible on touch devices
   - Adequate spacing for touch targets
   - Active states for touch feedback
   - Adjusted padding and margins for mobile screens

## Browser Compatibility

The app works in:
- Chrome (desktop and mobile)
- Safari (desktop and mobile)
- Firefox (desktop and mobile)
- Edge (desktop and mobile)

## Future Enhancement Ideas

1. Multiple lists/categories
2. Color theme options
3. Export/import functionality
4. Collaboration features
5. More robust offline capabilities
6. Drag handle for better mobile UX
