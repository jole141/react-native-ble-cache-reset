import type { TurboModule } from 'react-native';
import { TurboModuleRegistry } from 'react-native';

export interface Spec extends TurboModule {
  refreshGatt(deviceId: string): Promise<void>;
  ping(): Promise<void>;
}

export default TurboModuleRegistry.getEnforcing<Spec>('BleCacheReset');
