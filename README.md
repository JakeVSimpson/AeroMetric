# AeroMetric

AeroMetric is a Flutter-based mobile application that provides readings on air quality, humidity, temperature, and gas detection for various gases.

## Features

### **Animated Background**

The application uses the `animated_background` package to create dynamic and visually pleasing backgrounds that enhance user experience.

### **Air Quality Readings**

Air quality readings are displayed in a structured manner, including:

- Temperature (e.g., 72°F)
- Humidity (e.g., 60%)
- Air Quality (e.g., Good)

### **Gas Detection**

The app is capable of detecting the presence of multiple gases, including:

- CO2
- VOC
- CO
- CH4
- H2
- LPG
- Smoke

Each gas detection is displayed in a `ListTile` format with appropriate icons and readings.

### **Navigation to Graphs**

The app features a button at the end of the readings page that allows users to navigate to a page with graphical representations of the readings, enhancing the analytical aspect of the application.

### **Custom Styling with Google Fonts**

The application utilizes the `google_fonts` package to apply the Montserrat font, giving it a modern and clean design.

### **Scrollable Layout**

To handle overflow of content, the app's layout is wrapped in a `SingleChildScrollView` ensuring that the user can access all the content regardless of screen size.

### **Transition Animations**

The application utilizes the `page_transition` package to provide smooth page transitions, giving a polished feel to the app's navigation.

## Availability

The application will be available on the App Store for download and use.
