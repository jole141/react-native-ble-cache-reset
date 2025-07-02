# react-native-ble-cache-reset

React Native BLE library for iOS that enables refreshing the GATT cache for connected devices.

## Installation

```sh
npm install react-native-ble-cache-reset
# or
yarn add react-native-ble-cache-reset
```

## Usage

```javascript
import { refreshGatt } from 'react-native-ble-cache-reset';

// Refresh GATT cache for a device by its UUID
refreshGatt('device-uuid-string');
```


## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)
